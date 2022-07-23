library(shiny)

shinyUI(fluidPage(
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "poker.css")
    ),

    titlePanel("Poker"),

    fluidRow(
        column(12,
           lapply(1:3, function(i) {
               div(
                   class="card",
                   textOutput(paste0("card", i))
               )
           })
        )
    )
))
