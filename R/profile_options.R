#  ------------------------------------------------------------------------
#
# Title : R Options
#    By : Jimmy Briggs
#  Date : 2022-03-18
#
#  ------------------------------------------------------------------------

# Options
options(
  repos = c(CRAN = "https://cran.rstudio.com"),
  Ncpus = as.integer(Sys.getenv("NUMBER_OF_PROCESSORS")) - 2L,
  download.file.method = "libcurl",
  editor = "notepad",
  pager = "internal",
  scipen = 999,
  useFancyQuotes = FALSE,
  tab.width = 2,
  max.print = 200,
  browserNLdisabled = TRUE,
  shiny.launch.browser = TRUE,
  orcid = "0000-0002-7489-8787"
)

# Set Options:
source(r_config_dir("R/profile_options_addinit.R"))
source(r_config_dir("R/profile_options_blogdown.R"))
source(r_config_dir("R/profile_options_gargle.R"))
source(r_config_dir("R/profile_options_radian.R"))
source(r_config_dir("R/profile_options_shrtcts.R"))
source(r_config_dir("R/profile_options_usethis.R"))
source(r_config_dir("R/profile_options_vscode.R"))
