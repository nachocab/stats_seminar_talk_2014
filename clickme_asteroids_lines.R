library(clickme)
library(scales)
asteroids_data <- read.table("asteroids_data.txt", sep="\t", header = TRUE, stringsAsFactors = FALSE)

velocity_sd <- aggregate(velocity ~ name, asteroids_data, sd)
velocity_sd <- sort(na.omit(setNames(velocity_sd$velocity, velocity_sd$name)))
number_flybys <- sort(table(asteroids_data$name))
frequent_changes <- intersect(names(tail(velocity_sd,70)), names(tail(number_flybys,200)))
frequent_changes_data <- asteroids_data[asteroids_data$name %in% frequent_changes, ]
frequent_changes_lines <- split(frequent_changes_data[, c("date", "velocity")], frequent_changes_data$name)
frequent_changes_diameters <- sapply(split(frequent_changes_data$diameter, frequent_changes_data$name), unique)

clickme("lines", frequent_changes_lines,
        radius = 3, opacity = .6,
        width = rescale(frequent_changes_diameters, to=c(2,12)),
        ylab = "Velocity (km/s)", xlab = "Date (Years)",
        title = "What asteroids are changing velocity?",
        extra = list(diameter = frequent_changes_diameters),
        out.width = 900)$show() # you only need show() if you load this through source()


