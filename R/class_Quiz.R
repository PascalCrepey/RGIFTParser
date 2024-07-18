#' R6 Class representing a Quiz
#'
#' @description
#' This class represents a Quiz object. It is a container for a list of questions.
#'
#' @details
#' The Quiz class is a container for a list of questions. It is used to store
#' and manipulate questions.
#' Questions can be added to the Quiz object using the add_question method, or
#' directly using a GIFT file with the import_gift method.
#'
#'
#' @export
Quiz <- R6::R6Class("Quiz",
                          public = list(
                            #' @description
                            #' This function initializes the Quiz object
                            #' @return The Quiz object
                            initialize = function() {
                              private$.questions <- list()
                            },
                            #' @description
                            #' This function adds a question to the Quiz object
                            #' @param question The question to add
                            #'
                            add_question = function(question) {
                              private$.questions <- c(private$.questions, question)
                            },
                            #' @description
                            #' This function imports a GIFT formatted text into the Quiz object
                            #' @param text A character vector containing the GIFT formatted text
                            #'
                            import_gift = function(text) {
                              res = GIFTParser(text)
                              if(length(res) > 0) {
                                for(q in res) {
                                  self$add_question(q)
                                }
                              }
                            }
                          ),
                          active = list(
                            #' @field list This function returns the list of questions
                            list = function() {
                              return(private$.questions)
                            },
                            #' @field description This function returns the description of the Quiz object
                            description = function() {
                              return("Quiz")
                            }
                          ),

                          private = list(
                            .questions = list()
                          )
)

