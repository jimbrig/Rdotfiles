
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

# git and github ----------------------------------------------------------
usethis::use_git()
usethis::use_github()
usethis::use_github_action()
usethis::use_github_actions()

# inst dirs ---------------------------------------------------------------
c(
  "inst",
  "inst/config",
  "inst/templates",
  "inst/examples",
  "inst/scripts"
) |>
  purrr::walk(fs::dir_create)

