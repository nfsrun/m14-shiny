# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  # Add a numbericInput to choose the number of observations
  titlePanel("Hello Shiny!"),
  numericInput(label="# observations", value = 100, min = 1, step = 1), 
  selectInput('color', label =  'color', default), 
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
  
  # Add a selectInput that allows you to select a color from a list of choices
  
  
  # Plot the output with the name "scatter"
  
  
))