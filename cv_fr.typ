#import "moderncv.typ": *

#let cv_data = yaml("cv_fr.yaml")

#show: project.with(..cv_data)

= Expérience

#cv_lines(cv_data.at("work"))

= Formation

#cv_lines(cv_data.at("education"))

= Projets

#cv_lines(cv_data.at("projects"))

= Langues

#cv_languages(cv_data.at("languages")).

= Compétences techniques

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  ..skills_to_array(cv_data.at("skills"))
)
