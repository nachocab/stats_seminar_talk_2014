# Interactive Visualizations in R using Shiny and Clickme

Click on Download ZIP at the right, or use git to clone this repo.

``` r
# Install devtools if you don't have it
install.packages("devtools")

# and run this
devtools::install_github(c("rstudio/shiny", "nachocab/clickme"))
```

## Shiny example

``` r
# Use setwd() to set R's path to the "stats_seminar_talk_2014" folder
# For example: setwd("~/Downloads/stats_seminar_talk_2014")
library(shiny)
library(ggplot2)
runApp("shiny_asteroids")
# you can go back to R by pressing "Ctrl C"
```

You should see this:

![Shiny Asteroids](http://imgur.com/Ki7uOhG.jpg)

## Clickme points example

``` r
# Use setwd() to set R's path to the "stats_seminar_talk_2014" folder
source("clickme_asteroids_points.R")

# you can also try your own plot
clickme("points", asteroids_data$velocity,
    asteroids_data$diameter,
    names = asteroids_data$name,
    title = "Are bigger asteroids faster?"
    xlab = "Velocity (km/s)", ylab = "Diameter (meters)")
```

You should see this ([live example](http://rclickme.com/asteroids_points.html)):

![Clickme Asteroids points](http://imgur.com/ukbKCJ8.jpg)

Inspiration from [Alex H. Parker](https://plot.ly/~alexhp/68/).
Data from [NASA NEO](http://neo.jpl.nasa.gov/cgi-bin/neo_ca?type=NEO&hmax=all&sort=date&sdir=ASC&tlim=all&dmax=5LD&max_rows=50&fmt=full&action=Display+Table&show=1)

## Clickme lines example

``` r
# Use setwd() to set R's path to the "stats_seminar_talk_2014" folder
source("clickme_asteroids_lines.R")
```

You should see this ([live example](http://rclickme.com/asteroids_lines.html)):

![Clickme Asteroids lines](http://i.imgur.com/gNiWi6E.jpg)
