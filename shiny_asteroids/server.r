shinyServer(function(input, output, session) {
  library(ggplot2)

  asteroids_data <- read.table("../asteroids_data.txt", sep = "\t", header = TRUE)
  asteroids <- reactive({
    slider_condition <- asteroids_data$date >= input$date[1] &
                        asteroids_data$date <= input$date[2] &
                        asteroids_data$distance >= input$distance[1] &
                        asteroids_data$distance <= input$distance[2]
    asteroids_data[slider_condition, ]
  })

  output$asteroids_plot <- renderPlot({
    p <- ggplot(asteroids(), aes(date, distance)) +
      geom_point(aes(size = diameter, color = velocity)) +
      scale_size(range = c(2, 20)) + theme_bw()
    print(p)
  })

})
