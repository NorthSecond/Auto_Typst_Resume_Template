#let icon(path) = box(
  baseline: 0.125em,
  height: 1.0em,
  width: 1.25em,
  image(
    path, 
    width: 1em,
  )
)

// Set fontawesome icons
#let fa_path = "/img/fa/fa-";

#let fa_home = icon(fa_path + "home.svg");
#let fa_email = icon(fa_path + "envelope.svg");
#let fa_github = icon(fa_path + "github.svg");
#let fa_linkedin = icon(fa_path + "linkedin.svg");
#let fa_phone = icon(fa_path + "phone-alt.svg");
#let fa_weixin = icon(fa_path + "weixin.svg");
