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

You should see this.

![Shiny Asteriods](http://i.imgur.com/neIziuD.png)

## Clickme example

``` r
library(clickme)
```
