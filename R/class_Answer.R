#' R6 class representing an answer
#'
#' @description
#' This class represents an answer.
#'
#' @importFrom R6 R6Class
#' @export
Answer <- R6::R6Class("Answer",
                        public = list(
                          #' @description
                          #' This function initializes the answer
                          #' @param data a list containing the data of the answer
                          #' @return The answer object
                          initialize = function(data) {
                            #generate a random 32 characters id for the question
                            private$id = paste(sample(c(0:9, letters, LETTERS), 32, replace = TRUE), collapse = "")
                            private$weight = data$weight
                            private$answer = data$answer
                            private$correct = ifelse(data$operator == "=", TRUE, FALSE)
                            private$feedback = data$feedback
                          },
                          print = function() {
                            cat(private$answer)
                            if(!is.null(private$weight)) {
                              if(private$weight > 0){
                                cat(" (True [", private$weight, "%]")
                              }else{
                                cat(" (False [", private$weight, "%]")
                              }
                            }else if(private$correct){
                              cat(" (True")
                            }else{
                              cat(" (False")
                            }
                            if(!is.null(private$feedback))
                              cat(": ", private$feedback, ")\n")
                            else
                              cat(")\n")
                          }
                        ),
                      active = list(
                        #' @description
                        #' This function returns the answer as a list
                        #' @return The answer as a list
                        #'
                        list = function() {
                          return(list(
                            id = private$id,
                            weight = private$weight,
                            answer = private$answer,
                            correct = private$correct,
                            feedback = private$feedback
                          ))
                        }
                      ),
                      private = list(
                        id = NULL,
                        weight = NULL,
                        answer = NULL,
                        correct = NULL,
                        feedback = NULL
                      )
)
