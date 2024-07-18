#' Define a GIFT question class using R6
#'
#' @export
GIFTQuestion <- R6::R6Class("GIFTQuestion",
                            public = list(
                              initialize = function(title) {
                                private$title <- title
                                #generate a random 32 characters id for the question
                                private$id = paste(sample(c(0:9, letters, LETTERS), 32, replace = TRUE), collapse = "")
                              },
                              export = function() {
                                list(
                                  id = private$id,
                                  text = private$title,
                                  category = private$question_type
                                )
                              },
                              import = function(data) {
                                private$id <- data$id
                                private$title <- data$text
                                private$question_type <- data$category
                              }
                            ),

                            private = list(
                              id = NULL,
                              #' @field title The title of the question
                              title = NULL,
                              #' @field text The text of the question
                              text = NULL,
                              #' @field category The category of the question
                              category = NULL,
                              #' @field question_type The type of the question
                              question_type = NULL
                            )
)
