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
                              #' @param data A list containing the data of the question
                              #' @return The question object
                              initialize = function(data) {
                                #generate a random 32 characters id for the question
                                private$id = paste(sample(c(0:9, letters, LETTERS), 32, replace = TRUE), collapse = "")

                                if(!is.null(data) && is.list(data)){
                                  private$load_data(data)
                                }
                                invisible(self)
                              },
                              #' @description
                              #' This function imports a question from a string
                              #' @param string A string containing the question data in GIFT format
                              #' @return The question object
                              import_gift = function(string){
                                res = GIFTParser(string)
                                if(length(res) > 1) warning("Only the first question will be imported")
                                if(length(res) == 0) stop("No question found in the string")

                                private$load_data(res[[1]])
                                invisible(self)
                              },

                              #' @description
                              #' This function returns the question as a list
                              #' @return A list representation of the question
                              export_gift = function() {

                              },
                              #' @description
                              #' This function imports a question from a list
                              #' @param data A list containing the question data
                              #' @return The question object
                              import = function(data) {
                                private$id <- data$id
                                private$title <- data$text
                                private$category <- data$category

                                invisible(self)
                              },
                              #' @description
                              #'
                              print = function() {
                                cat("Question: ")
                                if(!is.null(private$title)) cat(private$title)
                                if(!is.null(private$category)) cat(" (", private$category, ")")
                                cat("\n", private$text, "\n")
                                cat("Answers: \n")
                                for (answer in private$answers) {
                                  cat("\t")
                                  answer$print()
                                }
                                cat("Feedback: ", private$question_feedback, "\n")
                              }

                            ),
                        active = list(
                          #' @description
                          #' This function returns the question as a list
                          #' @return A list representation of the question
                          #' @export
                          #'
                          list = function() {
                            list(
                              id = private$id,
                              category = private$category,
                              title = private$title,
                              text = private$text,
                              answers = lapply(private$answers, function(answer) {
                                answer$list
                              }),
                              question_feedback = private$question_feedback,
                            )
                          }
                        ),

                        private = list(
                          id = NULL,
                          title = NULL,
                          text = NULL,
                          category = NULL,
                          question_type = NULL,
                          question_feedback = NULL,
                          answers = NULL,
                          build_answers = function(answers) {
                            answers <- lapply(answers, function(answer) {
                              Answer$new(answer)
                            })
                            return(answers)
                          },
                          load_data = function(data) {
                            private$title <- data$title
                            private$text <- data$text
                            private$category <- data$category
                            private$question_type <- data$question_type
                            private$question_feedback <- data$question_feedback
                            private$answers <- private$build_answers(data$answers)
                          }
                        )
)
