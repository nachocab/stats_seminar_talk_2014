library(clickme)
library(scales)
full_asteroids_data <- read.table("asteroids_data.txt", sep="\t", header = TRUE, stringsAsFactors = FALSE)
asteroids_data <- with(full_asteroids_data, full_asteroids_data[date >= 2000 & date <=2100 & distance <= 5,])
group_names <- c("fast", "faster", "fastest")
groups_by_velocity <- cut(log10(asteroids_data$velocity), breaks = 3, labels = group_names)
palette <- setNames(c("#fecc5c", "#fd8d3c","#f03b20"), group_names)

clickme("points",asteroids_data$date, asteroids_data$distance,
        names = asteroids_data$name,
        radius = rescale(asteroids_data$diameter, c(1,100)),
        palette = palette,
        extra = list("diameter (meters)" = asteroids_data$diameter,
                     "velocity (km/s)" = asteroids_data$velocity),
        title = "Near Earth Objects", subtitle = "(as reported by the NASA NEO group)",
        xlab = "Date (years)", ylab = "Distance (Lunar distances)",
        xlim = c(2000, 2100), ylim = c(0,5),
        opacity = .8, color_groups = groups_by_velocity,
        out_width = 1200, out_height = 600)$show() # you only need show() if you load this through source()

