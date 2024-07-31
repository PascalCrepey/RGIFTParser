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
                            #' @field debug A boolean indicating if the debug mode is activated
                            debug = FALSE,
                            #' @description
                            #' This function initializes the Quiz object
                            #' @param x either a filename and its path,
                            #' a list containing the data of the Quiz object, or
                            #' a character vector containing the GIFT formatted text
                            #' @param debug A boolean indicating if the debug mode is activated (FALSE)
                            #' @return The Quiz object
                            initialize = function(x, debug = FALSE) {
                              self$debug = debug
                              if(!is.null(x)){
                                if(length(x) == 1 && !is.list(x)){
                                  if(file.exists(x)){
                                    if(is.RDS(x)){
                                      data = readRDS(x)
                                      self$import(data)
                                    }else if (is.GIFT(x)){
                                      text = readLines(x)
                                      self$import_gift(text)
                                    }else{
                                      stop("The file is not a GIFT file or an RDS file")
                                    }
                                  }else{
                                    #we consider that x is a GIFT formatted text
                                    self$import_gift(x)
                                  }
                                }else if(is.list(x) && length(x) >= 1){
                                  #we consider that x is a list of questions
                                  self$import(data)
                                }else if(is.character(x) && length(x) >= 1){
                                  #we consider that x is a GIFT formatted text
                                  self$import_gift(x)
                                }else{
                                  stop("The input is not a valid input")
                                }
                              } else {
                                stop("The input is not a valid input")
                              }
                            },
                            #' @description
                            #' This function imports a GIFT formatted text into the Quiz object
                            #' @param text A character vector containing the GIFT formatted text
                            #'
                            import_gift = function(text) {
                              res = GIFTParser(text, debug = self$debug)
                              if(length(res) > 0) {
                                private$questions = lapply(res, function(x) {
                                  Question$new(x)
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
                                Question$new(x)
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
                              lapply(private$questions, function(x) {
                                x$list
                              })
                            }
                          ),

                          private = list(
                            questions = list()
                          )
)

