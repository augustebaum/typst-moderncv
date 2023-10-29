/*
 * Customizations on this template:
 *
 * - headings (h1..h4)
 *
 * - `xdot`: function, adds a trailing dot to a string only if it's not already present
 *
 * - `cvgrid`: basic layout function that wraps a grid. Controlled by two parameters `left_column_size` and `grid_column_gutter` which control the left column size and the column gutter respectively.
 *
 * - `cvcol`: used to write in the rightmost column only. Builds on `cvgrid`
 *
 * - `cventry`: used to write a CV entry. Builds on `cvgrid`
 *
 * - `cvlanguage`: used to write a language entry. Builds on `cvgrid`
 *
 */

#let left_column_size = 11%
#let grid_column_gutter = 10pt

#let main_color = color.blue.darken(60%)
#let heading_color = main_color
#let job_color = rgb("#737373")

#let project(
  title: "",
  author: [],
  photo: "",
  phone: "",
  email: "",
  github: "",
  website: "",
  linkedin: "",
  left_column_size: left_column_size,
  grid_column_gutter: grid_column_gutter,
  main_color: main_color,
  heading_color: heading_color,
  job_color: job_color,
  body
) = {
  set document(author: author, title: title)
  set page(
    numbering: none,
    margin: (x: 9%, y: 10%, top: 7%, bottom: 5%),
  )
  set text(font: ("Latin Modern Sans", "Inria Sans"), lang: "en", fallback: true, size:10.5pt)
  show math.equation: set text(weight: 400)

  /*
   * How headings are used:
   * - h1: section (colored, prominent, with colored rectangle, spans two columns)
   * - h2: role (bold)
   * - h3: place (italic)
   * - h4: generic heading (normal, colored)
   */
  show heading.where(level: 1): element => [
    #box(
      inset: (bottom: 0.15em, right: -5pt + grid_column_gutter),
      rect(fill: main_color, width: left_column_size, height: 0.25em)
    )
    #text(element.body, fill: heading_color, weight: 400)
  ]

  show heading.where(level: 2): element => [
    #text(element.body + ",", size: 0.85em)
  ]

  show heading.where(level: 3): element => [
    #text(element.body, size: 1em, weight: 400, style: "italic")
  ]

  show heading.where(level: 4): element => block[#text(element.body, size: 1em, weight: 400, fill: heading_color)]

  set list(marker: box(circle(radius: 0.2em, stroke: heading_color), inset: (top: 0.15em)))

  set enum(numbering: (n) => text(fill: heading_color, [#n.]))

  show link: set text(fill: luma(60))

  grid(
    columns: (50%, 1fr, 13%),
    gutter: 1em,
    box[
      // Author information.
      #text([#author], weight: 400, 2.5em)
    
      #v(-1.2em)
    
      // Title row.
      #block(text(weight: 400, 1.5em, title, style: "italic", fill: job_color))

      #v(1em)
    ],
    align(right)[
      // Contact information
      #set block(below: 0.5em)

      #if github != "" {
        align(top)[
          #box(height: 1em, baseline: 10%)[#image("icons/github.svg")]
          #link("https://github.com/" + github)[#raw(github)]
        ]
      }

      #if phone != "" {
        align(top)[
          #box(height: 1em, baseline: 2pt)[#image("icons/square-phone.svg")]
          #link("tel:" + phone)[#phone]
        ]
      }

      #if email != "" {
        align(top)[
          #box(height: 1em, baseline: 18%)[#image("icons/envelope-regular.svg")]
          #link("mailto:" + email)[#raw(email)]
        ]
      }

      #if website != "" {
        align(top)[
          #box(height: 1em, baseline: 13%)[#image("icons/globe.svg")]
          #link("https://" + website)[#raw(website)]
        ]
      }

      #if linkedin != "" {
        align(top)[
          #box(height: 1em, baseline: 10%)[#image("icons/linkedin.svg")]
          #link("https://www.linkedin.com/in/" + linkedin)[#raw(linkedin)]
        ]
      }

    ],
    if photo != "" {
      image(photo)
    }
  )

  // Main body.
  set par(justify: true, leading: 0.5em)

  body
}

#let cell = rect.with(
  inset: 8pt,
  width: 100%,
)

#let cvgrid(..cells) = pad(bottom: 0.8em)[#grid(
  columns: (left_column_size, auto),
  row-gutter: 0em,
  column-gutter: grid_column_gutter,
  ..cells
)]

#let cvcol(content) = cvgrid([], content)

#let cventry(
  description,
  date: [],
  place: "",
  role: []
) = cvgrid(
  align(right, date),
  [
    == #role
    === #place
    #v(-0.5em)

    #description
  ],
  v(-1em)
)

#let cvlanguage(
  language: [],
  description: [],
  certificate: [],
) = cvgrid(
  align(right, language),
  [#description #h(3em) #text(style: "italic", certificate)],
)
