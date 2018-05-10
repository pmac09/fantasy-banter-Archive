library(shiny)
library(shinydashboard)

# Import setup functions
source(file.path("./functions", "setup.R"), local = TRUE)




############################################################
ui <- dashboardPage(
  
  dashboardHeader(title = "Fantasy Banter"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Gameday", tabName = "tabGameday", icon = icon("tasks"))
    )
  ),
  
  dashboardBody(
    tabItems(
      source(file.path("./ui", "ui_Gameday.R"), local = TRUE)$value
    )
  )
)

############################################################
server <- function(input, output) {
  
  source(file.path("./server", "server_Gameday.R"), local = TRUE)$value
  
}

# Run the application 
shinyApp(ui = ui, server = server)

