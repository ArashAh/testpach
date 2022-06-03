

#' Find maximum GDP percap
#'
#' Finds the maximum GDP percap of the given country in the data frame
#'
#' Any detail description needed for users to use this function
#'
#' @param data data frame where GDP percap is listed for each country
#' @param which.country a character string referring to the country of interest
#'
#' @return a numeric value representing the maximum GPD percap for the given
#' country
#'
#' @import dplyr
#' @import ggplot2
#' @import tidyverse
#'
#' @export
#'
#' @examples
#' maxGDP(gm.data, "Norway")

maxGDP <- function(data , which.country ){
# adding this line for push test
    data %>%
    filter(country == which.country) %>%
    select(gdpPercap) %>%
    max()
}



