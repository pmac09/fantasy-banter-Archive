tabItem(
  tabName = "tabGameday",
  
  # 1.0 Game Selector Squares
  fluidRow(
    column(3, box("Game 1"))
    , column(3, box("Game 2"))
    , column(3, box("Game 3"))
    , column(3, box("Game 4"))
  ),
  
  # 2.0 Head to Head Comparison Section
  fluidRow(
    "Head to Head Comparison Section"
  ),
  
  # 3.0 Player Lists
  fluidRow(
    "Player Lists"
  )
)