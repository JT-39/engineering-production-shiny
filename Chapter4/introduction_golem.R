# Listing the files from the `golex` project using {fs}
fs::dir_tree("golex")


# This functions sets all the default options for your project
set_golem_options()

# The functions reading the options in this config file are
golem::get_golem_name()
golem::get_golem_wd()
golem::get_golem_version()