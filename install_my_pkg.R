install_my_pkg <- function(minimum = TRUE, recommend = FALSE, 
                   option = FALSE, ubuntu = FALSE) {
  pkglist <- NULL
  pkglist_github <- NULL
  
  if (ubuntu) {
    system("sudo hoge")
  }
  
  if (minimum) {
    pkglist <- c(pkglist, "tidyverse", "magrittr", "remotes", "devtools", "installr", "fs", "here", "pacman", "openxlsx", "data.table", "knitr", "rmarkdown", "lubridate", "styler", "renv")
  }
  
  if (recommend) {
    pkglist <- c(pkglist, "patchwork", "gt", "gtsummary", "flextable", "ftExtra", "xaringan")
  }
  
  if (option) {
    pkglist <- c(pkglist, "BiocManager", "tidymodels", "survival", "survminer", "Shiny", "rsconnect", "shinycssloaders", "rvest", "datapasta", "comorbidity", "touch", "AdhereR", "ggdag", "dagitty", "reticulate")
    pkglist_github <- c(pkglist_github, "cran/icd", "MilesMcBain/breakerofchains", "tgerke/ggconsort")
  }
  
  install.packages(pkglist, dependencies = TRUE)
  remotes::install_github(pkglist_github)
}

install_my_pkg()
