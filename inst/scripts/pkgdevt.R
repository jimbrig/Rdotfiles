
#  ------------------------------------------------------------------------
#
# Title : Rdotfiles Package Development Script
#    By : Jimmy Briggs
#  Date : 2021-11-25
#
#  ------------------------------------------------------------------------


# libraries ---------------------------------------------------------------

require(usethis)
require(devtools)
require(fs)
require(purrr)
require(rcmdcheck)
require(attachment)
require(docthis)
require(chameleon)

# initialize package ------------------------------------------------------
usethis::create_package("Rdotfiles")
usethis::use_description()
usethis::use_roxygen_md()
usethis::use_readme_rmd()

knitr::knit("README.Rmd")


# setup git-cliff ---------------------------------------------------------

fs::file_create("cliff.toml")
usethis::use_build_ignore("cliff.toml")
system("git-cliff -i")
file.edit("cliff.toml")
system("git-cliff -o inst/CHANGELOG.md")


# git and github ----------------------------------------------------------
usethis::use_git()
usethis::use_github()
usethis::use_github_actions()
usethis::use_github_action("pkgdown")

# inst directories ---------------------------------------------------------------
c(
  "inst",
  "inst/config",
  "inst/templates",
  "inst/examples",
  "inst/scripts"
) |>
  purrr::walk(fs::dir_create)


# functions ---------------------------------------------------------------

# tests -------------------------------------------------------------------

# vignettes ---------------------------------------------------------------

# data --------------------------------------------------------------------

# document ----------------------------------------------------------------

# check -------------------------------------------------------------------

# build -------------------------------------------------------------------


