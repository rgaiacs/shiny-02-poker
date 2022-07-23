library(shiny)

shinyUI(fluidPage(
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "poker.css")
    ),

    titlePanel("Poker"),

    actionButton("new_hand", "New Hand"),

    fluidRow(
        column(12,
           uiOutput("cards")
        )
    )
))
