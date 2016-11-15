# BuildMap file: write function that returns a map

# This function requires plotly
library(plotly)

# BuildMap function: fill this in with a function that returns a map:
# Try parameterize a few options, such as the title
# I suggest: https://plot.ly/r/bubble-maps/

BuildMap <- function(data) {
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showland = TRUE,
    landcolor = toRGB("gray85"),
    subunitwidth = 1,
    countrywidth = 1
  )
  
  p <- plot_geo(data, locationmode = 'USA-states') %>%
    add_markers(
      x = ~lon, y = ~lat, hoverinfo = 'text',
      text = ~paste(name, "<br />Population: ", pop)
    ) %>%
    layout(title = '2016 US Shooting Casualties by City / Affected Casualties', geo = g)
  return(p)
}