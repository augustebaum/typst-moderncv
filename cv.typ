#import "moderncv.typ": *

#let cv_data = yaml("cv.yaml")

#show: project.with(..cv_data)

= Experience

#cv_lines(cv_data.at("work"))

= Education

#cv_lines(cv_data.at("education"))

= Projects

#cv_lines(cv_data.at("projects"))

= Languages

#cv_languages(cv_data.at("languages")).

= Technical Skills

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  ..skills_to_array(cv_data.at("skills"))
)
