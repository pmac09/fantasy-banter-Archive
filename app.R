library(shiny)
library(shinydashboard)
library(highcharter)
library(RMySQL)

# Define UI for application that draws a histogram
ui <- dashboardPage(
  
  dashboardHeader(title = "Fantasy Banter"),
  
  dashboardSidebar(
    sidebarMenu(
      #menuItem("Gameday", tabName = "tabGameday", icon = icon("tasks"))
      menuItem("League", tabName = "tabLeague", icon = icon("align-justify"))
    )
  ),
  
  dashboardBody(
    tabItems(
      source(file.path("./ui", "ui_Gameday.R"), local = TRUE)$value,
      source(file.path("./ui", "ui_League.R"), local = TRUE)$value
    )
  )
)

## SERVER
server <- function(input, output) {
  
  
  source(file.path("./server", "server_Gameday.R"), local = TRUE)$value
  source(file.path("./server", "server_League.R"), local = TRUE)$value
}

# Run the application 
shinyApp(ui = ui, server = server)

