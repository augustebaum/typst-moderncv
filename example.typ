#import "moderncv.typ": *

#show: project.with(
  author: "Auguste Baum",
  title: "MSc graduate in Data Science at EPFL",
  github: "augustebaum",
  phone: "+01 234 56 7890",
  email: "auguste.baum@pm.me"
)

= Work Experience

#cventry(
  date: [July 2023---October 2023],
  role: [Participant in Summer of Nix 2023],
  place: "NixOS Foundation, Paris (remote)",
)[
  - Developed Nix package and module for open-source projects, of which Pretalx and Rosenpass.
  - Experienced mob programming, a low-latency work technique enabling fast skill improvement.
]

#cventry(
  date: [Sept. 2022---March 2023],
  role: [AI research intern],
  place: "Swisscom Digital Lab, Lausanne",
)[
  - Conducted a research project on explainability of neural networks for big-data tabular datasets.
  - Developed reproducible research pipeline system using pytask.
]

#cventry(
  role: [Co-founder & CTO],
  place: "Resilio, Lausanne",
)[
  Built the backend of Resilio Tech, an LCA tool for digital sobriety consultancy, in Django.
]

#cventry(
  role: [Digital Sobriety consultant],
  place: "Zero Emission Group, EPFL, Lausanne",
)[
  - Developed automatic PowerPoint pipeline in Python, speeding up the auditing process by 30%.
  - Co-authored reports on environmental impact of digital technology in multinational companies.
]

= Education

#cventry(
  role: [MSc Data Science],
  place: "EPFL, Lausanne"
)[
  ML, information security and big data methods. MSc thesis on Explainable AI.
]

= Projects

#cventry(
  role: [MSc project: "Path regularization for continuous counterfactual explanations"],
  place: "Swisscom & EPFL, Lausanne",
)[  
  Developed a novel generative model regularization technique to produce high-quality explanations of deep neural network predictions. Supervised by Prof. Pascal Frossard and Dr Daniel Dobos.
]

#cventry(
  role: [Machine learning project: "Automatic detection of available area for rooftop solar panel installations"],
  place: "EPFL, Lausanne",
)[  
  Built a neural network model to detect the empty space on rooftops in satellite images.
]

#cventry(
  role: [BSc project: "Machine Learning methods for Property Prediction"],
  place: "UCL, London",
)[  
  Reviewed recent approaches to chemical property prediction with machine learning.
]

= Languages

English and French (native), Spanish (B2), Japanese (basic)

// #pagebreak()

= Technical Skills

#let cell(body) = [
  #box(
    rect(
      inset: 6pt,
      fill: gray.lighten(70%),
      radius: 6pt
    )[#body]
  )
]

#let skills = (
  "Haskell",
  "Scala",
  "Python",
  "Java",
  "PyTorch",
  "Spark",
  "Git",
  "Vim",
  "Rust",
  "Nix",
  "Golang",
  "Matlab",
  "Mathematica",
  "Sage",
  "HTML/CSS",
  "Django"
)

#skills.map(body => cell[#body]).join()

// #cvcol[
//   ==== Programming Languages

//   #grid(
//     columns: (1fr, 1fr, 1fr),
//     row-gutter: 0.5em,
//     [- Java],
//     [- C],
//     [- C++],
//     [- Python],
//     [- Martian],
//     [- English],
//     [- ChatGPT],
//     [- Ancient Greek],
//     [- Legalese]
//   )
// ]

// #cvcol[
//   ==== Environments

//   - Earth (development and server management)
//   - Wind (development)
//   - Fire (development)
// ]

// #cvcol[
//   ==== Misc

//   Various university-related and personal projects, some available on my GitHub profile.
// ]

// = Other

// #cvcol[
//   - Best Pizza Cook Central Mars City 2091 Championship Winner
//   - Coffee Conossieur
//   - If You Are Reading This You Are Awesome
// ]

#v(1fr)

#align(center)[_(Last updated: #datetime.today().display())_]