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
                            if(!is.null(data) && is.list(data)){
                              private$load_data(data)
                            }

                          },
                          #' @description
                          #' this function prints the answer
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
                        #' @field list returns the answer as a list
                        list = function() {
                          list(
                            weight = private$weight,
                            answer = private$answer,
                            min = private$min,
                            max = private$max,
                            precision = private$precision,
                            correct = private$correct,
                            feedback = private$feedback
                          )
                        }
                      ),
                      private = list(
                        id = NULL,
                        weight = NULL,
                        answer = NULL,
                        min = NULL,
                        max = NULL,
                        precision = NULL,
                        correct = NULL,
                        feedback = NULL,
                        load_data = function(data){
                          if(!is.null(data$weight))
                            private$weight = data$weight
                          if(!is.null(data$answer))
                            private$answer = data$answer
                          if(!is.null(data$precision))
                            private$precision = data$precision
                          if(!is.null(data$max))
                            private$max = data$max
                          if(!is.null(data$min))
                            private$min = data$min
                          if(!is.null(data$correct)){
                            private$correct = data$correct
                          }else if(!is.null(data$operator)){
                            private$correct = ifelse(data$operator == "=" ||
                                                       (!is.null(data$weight)
                                                        && data$weight > 0),
                                                     TRUE,
                                                     FALSE)
                          }
                          private$feedback = data$feedback
                        }
                      )
)
