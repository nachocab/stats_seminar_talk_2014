shinyUI(pageWithSidebar(
  headerPanel("Asteroid flybys"),
  sidebarPanel(
    sliderInput("distance", "Distance (LD)", min = 0, max = 5, step = .1, value = c(0,5)),
    sliderInput("date", "Year", min = 2000, max = 2100, value = c(2000,2100))
  ),
  mainPanel(
    plotOutput("asteroids_plot")
  )
))
