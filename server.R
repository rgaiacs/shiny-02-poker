library(shiny)

library(tidyverse)

shinyServer(function(input, output) {
    suits <- tibble(suit =  c("clubs", "diamonds", "hearts", "spades"))
    numbers <- tibble(number = c("A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"))
    deck <- crossing(suits, numbers)

    cards <- sample_n(deck, 5)

    output$cards <- renderUI({
        tagList(
            lapply(1:nrow(cards), function(i) {
                div(
                    class=paste("card", cards$suit[i]),
                    span(
                        cards$number[i]
                    )
                )
            })
        )
    })

    observeEvent(input$new_hand, {
        cards <- sample_n(deck, 5)

        output$cards <- renderUI({
            tagList(
                lapply(1:nrow(cards), function(i) {
                    div(
                        class=paste("card", cards$suit[i]),
                        span(
                            cards$number[i]
                        )
                    )
                })
            )
        })
    })

})
