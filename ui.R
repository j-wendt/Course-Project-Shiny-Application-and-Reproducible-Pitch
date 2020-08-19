
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Relation between mpg and other automobile aspects"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h3("Dataset"),
            p("Motor Trend Car Road Tests"),
            h3("About the Data"),
            p("The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)."),
            h3("Data Source"),
            p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411."),
            HTML('<br>'),
            selectInput("variable", "Select variable for comparison:",
                        c("Number of cylinders" = "cyl",
                          "Displacement (cu.in.)" = "disp",
                          "Gross horsepower" = "hp",
                          "Rear axle ratio" = "drat",
                          "Weight (lb/1000)" = "wt",
                          "1/4 mile time" = "qsec",
                          "V/S" = "vs",
                          "Transmission" = "am",
                          "Number of forward gears" = "gear",
                          "Number of carburetors" = "carb"))
        ),

        
        mainPanel(
            h3("Linear model:",textOutput("caption")),
            plotOutput("mpgPlot"),
            verbatimTextOutput("fit")
        )
    )
))
