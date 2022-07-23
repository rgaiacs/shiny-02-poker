library(shiny)

library(tidyverse)

shinyServer(function(input, output) {
    suits <- tibble(suit =  c("clubs", "diamonds", "hearts", "spades"))
    numbers <- tibble(number = c("A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"))
    deck <- crossing(suits, numbers)

    cards <- sample_n(deck, 3)

    lapply(1:nrow(cards), function(i) {
        output[[paste0('card', i)]] <- renderText({
            paste0(cards$number[i], " ", cards$suit[i])
        })
    })
})
