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
library(shiny)
library(ggplot2)
runApp("shiny_asteroids")
```

You should see this:

![Shiny Asteroids](http://imgur.com/Ki7uOhG.jpg)

## Clickme example

``` r
source("clickme_asteroids.R")
```

You should see this ([live example](rclickme.com/asteroids)):

![Clickme Asteroids](http://imgur.com/ukbKCJ8.jpg)

Original by [Alex H. Parker](https://plot.ly/~alexhp/68/).
Data from [NASA NEO](http://neo.jpl.nasa.gov/cgi-bin/neo_ca?type=NEO&hmax=all&sort=date&sdir=ASC&tlim=all&dmax=5LD&max_rows=50&fmt=full&action=Display+Table&show=1)
