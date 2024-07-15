#' Define a GIFT question class using R6
#'
#' @export
GIFTQuestion <- R6::R6Class("GIFTQuestion",
                            public = list(
                              initialize = function(title, question_type, options) {
                                self$title <- title
                                self$question_type <- question_type
                                self$options <- options
                              },

                              get_title = function() {
                                self$title
                              },

                              get_question_type = function() {
                                self$question_type
                              },

                              get_options = function() {
                                self$options
                              }
                            )
)
