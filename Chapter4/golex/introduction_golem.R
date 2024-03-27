# Listing the files from the `golex` project using {fs}
fs::dir_tree()


# This functions sets all the default options for your project
golem::set_golem_options()

# The functions reading the options in this config file are
golem::get_golem_name()
golem::get_golem_wd()
golem::get_golem_version()

# Can also set these
# Get the values in the config file
# golem::set_golem_name("this")
golem::set_golem_version("0.0.1")

# Get the values from the config file
golem::get_golem_version()

# Add a key in the default configuration
golem::amend_golem_config(
  key = "MONGODBURL",
  value = "localhost"
)
# Add a key in the production configuration
golem::amend_golem_config(
  key = "MONGODBURL",
  value = "0.0.0.0",
  config = "production"
)

# Retrieve the value of `where`
golem::get_current_config(path = "inst/golem-config.yml"
)


# Loading get_golem_config() function from R/app_config.R
pkgload::load_all()

# Retrieve the value of `where`
get_golem_config(
  "MONGODBURL"
)
get_golem_config(
  "MONGODBURL",
  config = "production"
)

Sys.setenv("GOLEM_CONFIG_ACTIVE" = "production")
get_golem_config(
  "MONGODBURL"
)


"inst/app/www/"
# folder contains all files that are made available at application run time
# use the following function to add these files
golem_add_external_resources()
golem::add_css_file()
golem::add_js_file()
golem::add_js_handler()
golem::use_external_css_file()
golem::use_external_js_file()
golem::use_favicon()


# Link to file that is read during application generation use app_sys()
includeMarkdown( app_sys("app/www/howto.md") )

# Add any new external file into "inst/app/www/" so can use in UI
# For example
# Adding images in 
"inst/app/img"

# Calling 
addResourcePath( 'img', system.file('app/img', package = 'golex') )

# Adding elements to your UI with 
tags$img(src = "img/name.png")

# The dev/ folder is to be used as a notebook for your development process: 
# you will find here a series of functions that can be used throughout your 
# project.

# The man/ folder includes the package documentation. It is a common folder 
# automatically filled when you document your app, notably when running the 
# dev/run_dev.R script and the document_and_reload() function.