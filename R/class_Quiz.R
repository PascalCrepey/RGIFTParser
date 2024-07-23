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
                            #' @param data A list containing the data of the Quiz
                            #' @return The Quiz object
                            initialize = function(data) {
                              if(!is.null(data) && length(data) == 1){
                                self$import_gift(data)
                              }else if(!is.null(data) && is.list(data) && length(data) >= 1){
                                self$import(data)
                              }
                            },
                            #' @description
                            #' This function imports a GIFT formatted text into the Quiz object
                            #' @param text A character vector containing the GIFT formatted text
                            #'
                            import_gift = function(text) {
                              res = GIFTParser(text)
                              if(length(res) > 0) {
                                private$questions = lapply(res, function(x) {
                                  return(Question$new(x))
                                })
                              }
                              invisible(self)
                            },
                            #' @description
                            #' This function imports a list of questions into the Quiz object
                            #' @param data A list containing the questions data
                            #' @return The Quiz object
                            #'
                            import = function(data) {
                              private$questions = lapply(data, function(x) {
                                return(Question$new(x))
                              })
                              invisible(self)
                            },
                            #' @description
                            #' This function prints the Quiz object
                            #'
                            print = function() {
                              cat("Quiz: \n")
                              for(q in private$questions) {
                                print(q)
                              }
                              cat("Quiz containing ", length(private$questions),
                                  paste0(" question", ifelse(length(private$questions)>1,"s","")), "\n")
                            }
                          ),
                          active = list(
                            #' @field list This function returns the list of questions
                            list = function() {
                              return(private$questions)
                            },
                            #' @field description This function returns the description of the Quiz object
                            description = function() {
                              return("Quiz")
                            }
                          ),

                          private = list(
                            questions = list()
                          )
)

