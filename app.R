library(shiny)
library(shinydashboard)


# Define UI for application that draws a histogram
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

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  source(file.path("./server", "server_Gameday.R"), local = TRUE)$value
  
}

# Run the application 
shinyApp(ui = ui, server = server)

