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
                            private$correct = data$correct
                            private$feedback = data$feedback
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
