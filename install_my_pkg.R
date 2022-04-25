install_my_pkg <- function(minimum = TRUE, recommend = FALSE, 
                   option = FALSE, ubuntu = FALSE) {
  pkglist <- NULL
  pkglist_github <- NULL
  
  if (ubuntu) {
    system("sudo apt update
  sudo apt install -y gdebi-core wget
  sudo apt install -y fonts-ipaexfont
  fc-cache -f -v
  fc-list | grep IPAex
  sudo apt install -y build-essential
  sudo apt install -y libcurl4-openssl-dev
  sudo apt install -y libcurl4-gnutls-dev
  sudo apt install -y libxml2-dev
  sudo apt install -y libssl-dev
  sudo apt install -y libx11-dev
  sudo apt install -y libglu1-mesa-dev
  sudo apt install -y libmagick++-dev
  sudo apt install -y libudunits2-0
  sudo apt install -y libudunits2-dev
  sudo apt install -y libgdal-dev libproj-dev
  sudo apt install -y libgmp3-dev
  sudo apt install -y curl
  sudo apt install -y fcitx-frontend-qt5
  sudo ln -s /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so /usr/lib/rstudio/plugins/platforminputcontexts/
  sudo apt install -y libxml2-dev
  sudo apt install -y libssl-dev
  sudo apt install -y libcurl4-openssl-dev")

  pkglist <- c(pkglist, "xml2", "httr", "cutl", "rvest")
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
