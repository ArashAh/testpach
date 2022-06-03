
#' Plot life expectancy vs GDP percap
#'
#' Plots life expectancy vs GDP percap for the given country in the data frame
#'
#' Any detail description needed for users to use this function
#'
#' @param data data frame where GDP percap and life expectancy are
#'  listed for each country
#' @param which.country a character string referring to the country of interest
#'
#' @return a plot showing life expectancy vs GDP percap
#'
#' @import dplyr
#' @import ggplot2
#' @import tidyverse
#'
#' @export
#'
#' @examples
#' plotLifeGDP(gm.data, "Norway")



plotLifeGDP <- function(data , which.country ){

  data %>%
    filter(country == which.country) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp, size = year)) +
    geom_point()
}



