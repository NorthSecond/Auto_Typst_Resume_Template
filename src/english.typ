
// import from template
#import "../template/template.typ": *;
#show: template;

#set text(
    size: 12pt,
    font: "Centaur"
)

#init(
    name: "San Zhang",
    pic_path : "",
)

#info(
    color: rgb(0, 0, 0),
    (
        icon: "/img/fa/fa-home.svg",
        link: "https://zhangsan.io/",
        content: "https://zhangsan.io/"
    ),
    (
        icon: fa_github,
        link: "https://github.com/NorthSecond",
        content: "NorthSecond"
    ),
    (
        icon: fa_email,
        link: "mailto:San%20Zhang<me@zahangsan.io>",
        content: "me@zhangsan.io",
    ),
    (
        icon: fa_phone,
        link: "tel:+86 133 3333 3333",
        content: "+86 133 3333 3333",
    ),
)


#resume_section("Education")

#resume_item(
  "XXX University",
  "Master of Engineering",
  "Computer Science and Technology",
  "2024.09 -- 2027.07"
)

#resume_item(
  "XXXX University",
  "Bachelor of Engineering",
  "Software Engineering",
  "2020.09 -- 2024.06"
)

#resume_section("Publications")

- [CVPR 2024]*You*, #lorem(5), and #lorem(1). "#lorem(10)" Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition. 2024.
- [CVPR 2023]*You*, #lorem(5), and #lorem(1). "#lorem(10)" Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition. 2023.

#resume_section([Selected Projects])

#resume_item(
  lorem(5),
  "Computer Architecture",
  lorem(8),
  "2023.12 -- 2026.11"
)
#resume_desc(
  "Description",
  lorem(32)
)
#resume_desc(
  "Contribution",
  lorem(24)
)
#resume_desc(
  "Achievement",
  lorem(12)
)

#resume_section([Experience])

#resume_item(
  lorem(8),
  "Student Assistant",
  lorem(3),
  "2021.11 -- 2024.06"
)
#resume_desc(
  "Description",
  lorem(24)
)

#resume_section([Competitions and Awards])

#resume_desc(
  "Professional Skills Competition",
  lorem(8)
)
#resume_desc(
  "Scholarship",
  lorem(24)
)
#resume_desc(
  "Other Administrative Awards",
  lorem(12)
)

#resume_section([Skills and Interests])

#resume_desc(
  "Programming Languages",
  [Proficient in C/C++; familiar with Rust, Python; have experience in Java, SQL, Matlab, TypeScript, Golang and some other languages.]
)
#resume_desc(
  "Development Tools",
  [Proficient in Git, Docker, Kubernetes, familiar with Jenkins, Travis CI, Circle CI, etc.]
)
#resume_desc(
  "Interests",
  [Machine Learning, Computer Vision, Compiler, System Programming, etc.]
)