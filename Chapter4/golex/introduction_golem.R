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
