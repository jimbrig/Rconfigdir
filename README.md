# R Config Directory

> ~/.config/R/* Contents

See also: 

- [jimbrig/configR](https://github.com/jimbrig/configR): an R package meant to support a setup like this.
- [jimbrig/XDG_CONFIG_HOME_R](https://github.com/jimbrig/XDG_CONFIG_HOME_R): XDG Compliant R Configuration and Setup on Windows.

## Customized Setup

I have placed all R specific configurations into my `%HOME%` path's `.config\R` directory and included the following contents:

- [`.Rprofile`](./.Rprofile): Default `.Rprofile` startup file which calls all downstream actions (except for `.Renviron` which gets triggered first)

- [`.Renviron`](./.Renviron): Default `.Renviron` startup file excluding any sensitive *secrets*, which instead are included in a separate `secrets.Renviron` file. 

- [`.Rhistory`](./.Rhistory): Default `.Rhistory` file housing the R console history

- [`.radian_profile`](./.radian_profile): Default `radian` terminal profile

- [`.radian_history`](./.radian_history): Default `radian` terminal console history 

### R Utilities and Scripts

Plus a variety of utility functions and scripts in the [`R`](./R/) directory:

- [profile_functions.R](R/profile_functions.R): Custom utility functions loaded into a separate `.rprofile` environment after R loads.

- [profile_options.R](R/profile_options.R): Sets default options and sources all downstream `profile_options_*` files held in the [R](R) directory.

- [profile_secrets.R](R/profile_secrets.R): Loads environment variable contents from a separate `secrets.Renviron` file (gitignore'd from this repository).

- [profile_settings.R](R/profile_settings.R): Customized settings for R such as auto-completion, history options, `pak` callback, start up prompt, etc.

- [profile_shortcuts.R](R/profile_shortcuts.R): Customized RStudio specific keyboard shortcuts.

- [utils.R](R/utils.R): core utility functions used during startup and ported into the `.rprofile` environment from `.globalenv` once startup is complete.

