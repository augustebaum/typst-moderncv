#import "moderncv.typ": *

#show: project.with(
  author: "Auguste Baum",
  title: "MSc graduate in Data Science at EPFL",
  github: "augustebaum",
  phone: "+33 6 42 89 41 43",
  email: "auguste.baum@pm.me"
)

= Experience

#cventry(
  date: [July 2023---Oct. 2023],
  role: [Participant in #link("https://discourse.nixos.org/t/summer-of-nix-2023/27067")[Summer of Nix 2023]],
  place: [#link("https://opencollective.com/nixos")[NixOS Foundation], Paris (remote)],
)[
  - Developed #link("https://nixos.org/")[Nix] package and module for open-source projects, of which #link("https://github.com/ngi-nix/ngipkgs/issues/2")[Pretalx] and #link("https://github.com/ngi-nix/ngipkgs/issues/6")[Rosenpass].
  - Experienced #link("https://www.remotemobprogramming.org/")[mob programming], a low-latency work technique enabling fast skill improvement.
]

#cventry(
  date: [Sept.~2022---March~2023],
  role: [AI research intern],
  place: [#link("https://research.swisscom.ai/")[Swisscom Digital Lab], Lausanne],
)[
  - Conducted a research project on explainability of neural networks for big-data tabular datasets.
  - Developed reproducible research pipeline system using #link("https://pytask-dev.readthedocs.io/")[`pytask`].
]

#cventry(
  date: [2021---2022],
  role: [Co-founder & CTO],
  place: [#link("https://resilio-solutions.com/")[Resilio], Lausanne],
)[
  Built the backend of #link("https://resilio-solutions.com/services/tech/")[Resilio Tech], an LCA tool for digital sobriety consultancy, in Django.
]

#cventry(
  date: [2020---2021],
  role: [#link("https://theshiftproject.org/en/article/lean-ict-our-new-report/")[Digital Sobriety] consultant],
  place: "Zero Emission Group, EPFL, Lausanne",
)[
  - Developed automatic PowerPoint pipeline in Python, speeding up the auditing process by 30%.
  - Co-authored reports on environmental impact of digital technology in multinational companies.
]

= Education

#cventry(
  date: [2020---2023],
  role: [MSc Data Science],
  place: "EPFL, Lausanne"
)[
  ML, information security and big data methods. MSc thesis on Explainable AI.
]

#cventry(
  date: [2017---2020],
  role: [BSc Mathematics & Statistics and Physical Chemistry],
  place: "UCL, London"
)[
  First class Honours. Dissertation on Machine Learning for chemical property prediction.
]

#cventry(
  date: [2016---2017],
  role: [#link("https://en.wikipedia.org/wiki/Classe_pr%C3%A9paratoire_aux_grandes_%C3%A9coles")[Classe préparatoire]],
  place: "Lycée Saint-Louis, Paris"
)[
  Admitted in PC#super[\*]. Foundations of Physics, Chemistry, Mathematics and Computer science.
]

= Projects

#cventry(
  date: [2022---2023],
  role: [MSc project: "Path regularization for continuous counterfactual explanations"],
  place: "Swisscom & EPFL, Lausanne",
)[  
  Developed a novel generative model regularization technique to produce high-quality explanations of deep neural network predictions. Supervised by #link("https://www.epfl.ch/labs/lts4/people/people-current/frossard/")[Prof.~Pascal Frossard] and #link("https://www.researchgate.net/profile/Daniel-Dobos-2")[Dr~Daniel Dobos].
]

#cventry(
  date: [2021],
  role: [Machine learning project: #link("https://github.com/CS-433/cs-433-project-2-vortexnco")["Automatic detection of available area for rooftop solar panel installations"]],
  place: "EPFL, Lausanne",
)[  
  Built a neural network model to detect the empty space on rooftops in satellite images.
]

#cventry(
  date: [2020],
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
      // inset: 1pt,
      outset: (y: -1pt),
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
  "Django",
  "HTMX",
)

// #skills.map(cell).join()

#let skill(category, body) = [
  #grid(
    columns: (25%, 1fr),
    column-gutter: 1em,
    align(right)[#category],
    [#body]
  )
]


#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  skill("Functional programming", [#cell("Haskell") #cell("Scala")]),
  skill("Object-oriented programming", [#cell("Python") #cell("Java")]),
  skill("ML / Data", [#cell("PyTorch")]),
  skill("Big data", [#cell("Spark")]),
  skill("Software development", [#cell("Git")]),
  skill("Scientific computing", [#cell("Matlab") #cell("Mathematica") #cell("Sage")]),
  skill("Web development", [#cell("HTML/CSS") #cell("Django")]),
  skill("Miscellaneous", [#cell("Nix") #cell("Vim")]),
)


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