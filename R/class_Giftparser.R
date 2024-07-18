#' Define a GIFT parser class using R6
#'
#' @export
Giftparser <- R6::R6Class("Giftparser",
                          public = list(
                            initialize = function() {
                              private$.questions <- list()
                            }
                          ),
                          active = list(
                            list = function() {
                              return(private$.questions)
                            },
                            description = function() {
                              return("GIFT parser")
                            }
                          ),

                          private = list(
                            .questions = list()
                          )
)

