#import "icons.typ": *;

#let template(doc) = {
    set page(
        margin: (x: 0.9cm, y: 1.3cm),
        paper: "a4",
    )
    set text(
        size: 11pt,
        font:("Noto Serif CJK SC"),
    )
    show link: text
    set par(
        justify: true,
    )
    doc
}

#let init(
    name: lorem(3),
    pic_path: "",
) = {
    set document(
        title: name + "'s Resume",
        author: name,
    )
    set align(
        center,
    )
    text(
        style: "normal",
        weight: "extrabold",
        size: 20pt,
    )[#name]
    if pic_path != "" {
        // insert picture
        place(
            top + right,
            dy: -2em,
            image(
                pic_path,
                height: 33mm,
            )
        )
    }
    // v(1em)
    set align(left)
}

#let info(
    color: rgb(0, 0, 0),
    ..infos
) = {
    set text(
        fill: color,
        // size: 10pt,
    )
    set align(
        center,
    )
    infos.pos().map(dir => {
        box(
            height: 1em,
            {
            if "icon" in dir {
                if (type(dir.icon) == str) {
                    icon(dir.icon)
                } else {
                    dir.icon
                }
            }
            h(0.15em)
            if "link" in dir {
                link(dir.link, dir.content)
            } else {
                dir.content
            }
        })
    }).join(h(0.5em) + "·" + h(0.5em))
    v(0.5em)
}

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

#let resume_section(title) = {
    [== #title]
    chiline()
}

#let resume_item(proj_title, proj_time, proj_postion, proj_rule) = {
    [*#proj_title*]
    h(1fr)
    if proj_time != none {
        [#proj_time]
    }
    if proj_postion != none or proj_rule != none {
        linebreak()
    }   
    if proj_postion != none {
        [#proj_postion]
    }
    h(1fr)
    if(proj_rule != none) {
        [#proj_rule]
    }
    linebreak()
}

#let resume_desc(l, r) = {
    [- *#l*: #r]
}
