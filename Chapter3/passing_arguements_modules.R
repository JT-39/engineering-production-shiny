mod_ui <- function(id, button_label) {
  ns <- NS(id)
  tagList(
    actionButton(ns("validate"), button_label)
  )
}

# Printing the HTML for this piece of UI
mod_ui("mod_ui_1", button_label = "Validate ")
mod_ui("mod_ui_2", button_label = "Validate, again")
