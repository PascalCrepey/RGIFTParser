#' R6 class representing a question
#'
#' @description
#' This class represents a question. It has a title, a text, a category and a type.
#'
#' @importFrom R6 R6Class
#' @export
Question <- R6::R6Class("Question",
                            public = list(
                              #' @description
                              #' This function initializes the question with a title
                              #' @param title The title of the question
                              #' @return The question object
                              initialize = function(title) {
                                private$title <- title
                                #generate a random 32 characters id for the question
                                private$id = paste(sample(c(0:9, letters, LETTERS), 32, replace = TRUE), collapse = "")
                              },
                              #' @description
                              #' This function returns the question as a list
                              #' @return A list representation of the question
                              export = function() {
                                list(
                                  id = private$id,
                                  text = private$title,
                                  category = private$question_type
                                )
                              },
                              #' @description
                              #' This function imports a question from a list
                              #' @param data A list containing the question data
                              #' @return The question object
                              import = function(data) {
                                private$id <- data$id
                                private$title <- data$text
                                private$question_type <- data$category
                              }
                            ),

                            private = list(
                              id = NULL,
                              title = NULL,
                              text = NULL,
                              category = NULL,
                              question_type = NULL,
                              question_feedback = NULL,
                              answers = NULL
                            )
)
