
# R Dotfiles Roadmap

## Contents

## Features

- Provide support functions for creating and customizing various R specific dotfiles:
  + `.Rprofile`
  + `.Renviron`
  + `.Rhistory`
  + `.Rbuildignore` (global)
  + `.gitignore-R`
  
- Provide support functions for customizing various OS specific environment variables 
  related to R:
  + `HOME`
  + `R_USER`
  + `R_LIBS` & `R_LIBS_USER`
  + `R_PROFILE_USER`
  + `R_ENVIRON_USER`
  + `R_PROJECT_DIR` (optional)
  + `R_ARCH`
  + `R_INSTALL_TAR`
  
plus, for Windows, ensuring `rtools` is installed and on the system/user's `PATH`.

- Provide support for best practices regarding secrets and credentials.

- Provide support for backing up and restoring RStudio User Preferences

- Provide support for backing up and restoring installed user R Packages

### R Profile Features

- Validate and setup user's `.libPaths()`

- Tweak user session `options()`:
  + `repos(CRAN = "https://cran.rstudio.com")` by default and allows other custom 
    specified repository source URLs.
  + Set `editor`, `pager`, `tab.width`, `mac.print`, `scipen` etc.
  + Disable `useFancyQuotes`
  + Set any Visual Studio Code specific options necessary for developing R from VSCode IDE
  + Set any Radian specific options necessary for using the `radian` R terminal
  + User specific details:
    + Name
    + Email
    + ORCID
    + URLs
    + GitHub Profile
  + Set git options and default protocol
  + Set `usethis` and `devtools` default options
  + Set `bookdown`, `blogdown`, etc. default options

