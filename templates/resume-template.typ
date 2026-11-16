#let resume(
  author: "",
  contacts: (),
  body,
) = {
  set document(author: author, title: author)

  set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "en",
  )

  set page(
    margin: (
      top: 1.25cm,
      bottom: 0cm,
      left: 1.5cm,
      right: 1.5cm,
    ),
  )

  show link: set text(
    fill: rgb("#0645AD"),
  )

  show heading: it => [
    #pad(top: -7pt, bottom: -15pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Title
  block(text(weight: 700, 2.5em, [#smallcaps(author)]))

  // Subtitle
  pad(
    text(size: 10pt, smallcaps[#contacts.join(" | ")]),
  )

  set par(justify: true)

  body
}

#let hide(should-hide, content) = {
  if not should-hide {
    content
  }
}

#let edu(
  institution: "",
  date: "",
  education: (),
  details: "",
) = {
  pad(
    bottom: -0.5em,
    grid(
      columns: (auto, 1fr),
      gutter: 0.5em,
      strong[#institution], align(right, emph[#date]),
    ),
  )
  for degree in education [
    #strong[#degree.at(0)] | #emph[#degree.at(1)] \
  ]

  details
}

/*
Skills section formatting, responsible for collapsing individual entries into
a single list.
*/
#let skills(areas) = {
  for area in areas {
    strong[#area.at(0): ]
    area.at(1).join(" | ")
    linebreak()
  }
}

/*
Experience section formatting logic.
*/
#let exp(
  role: "",
  project: "",
  date: "",
  location: "",
  summary: "",
  details: [],
) = {
  pad(
    bottom: -0.5em,
    grid(
      columns: (auto, 1fr),
      align(left)[
        #strong[#role]
        #{
          if summary != "" [
            \ #emph[#summary]
          ]
        }
      ],
      align(right)[
        #emph[#date]
        #{
          if location != "" [
            \ #emph[#location]
          ]
        }
      ],
    ),
  )
  details
}

#let interest(values) = {
  for value in values [
    #strong[#value.at(0)] | #emph[#value.at(1)] \
  ]
}

