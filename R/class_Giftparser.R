#' Define a GIFT parser class using R6
#'
#' @export
Giftparser <- R6::R6Class("Giftparser",
                          public = list(
                            initialize = function() {
                              private$.questions <- list()
                            },

                            parse = function(file_path) {
                              # Read the file line by line
                              lines <- readLines(file_path, encoding = "UTF-8")

                              # Iterate over each line
                              for (line in lines) {
                                # Skip blank lines and comments
                                if (grepl("^\\s*$", line) || grepl("^//", line)) {
                                  next
                                }

                                # Extract question title and text
                                title_match <- regexec("::title:: (.*)$", line)
                                if (length(title_match) > 0) {
                                  title <- substr(line, attr(title_match, "match.length") + 1, nchar(line))
                                } else {
                                  title <- ""
                                }

                                # Extract question type and options
                                question_type_match <- regexec("^(.*)\\[(.*)\\]$", line)
                                if (length(question_type_match) > 0) {
                                  question_type <- substr(line, attr(question_type_match, "match.length") + 1, nchar(line))
                                  options <- strsplit(substr(line, attr(question_type_match, "start") + 1, nchar(line)), "\\|")
                                  options <- lapply(options[[1]], function(x) gsub("^\\s+|\\s+$", "", x))
                                } else {
                                  stop("Invalid question format")
                                }

                                # Create a new question object
                                question <- GIFTQuestion$new(title, question_type, options)
                                private$.questions <- c(private$.questions, list(question))
                              }
                            },

                            get_questions = function() {
                              private$.questions
                            }
                          ),

                          private = list(
                            .questions = list()
                          )
)

