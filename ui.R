library(shiny)

shinyUI(fluidPage(
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "poker.css")
    ),

    titlePanel("Poker"),

    fluidRow(
        column(12,
               div(
                   class="card",
                   textOutput("card")
               )
        )
    )
))
