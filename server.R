library(shiny)

library(tidyverse)

shinyServer(function(input, output) {
    suits <- tibble(suit =  c("clubs", "diamonds", "hearts", "spades"))
    numbers <- tibble(number = c("A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"))
    deck <- crossing(suits, numbers)

    card <- sample_n(deck, 1)

    output$card <- renderText({
        paste0(card$number, " ", card$suit)
    })
})
