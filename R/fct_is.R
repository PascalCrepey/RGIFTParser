

##check whether the line is a question feedback
is.feedback <- function(line){
  !is.na(stringr::str_match(line, "^####(.*)$")[1])
}

##check whether the answer is Boolean or not
is.boolean_answer <- function(x){
  !is.null(parse_boolean_answer(x))
}

##check whether the answer is numeric or not
is.numeric_answer <- function(x){
  !is.null(parse_numeric_answer(x))
}

## check whether the line is a title
is.title <- function(line){
  !identical(list(),parse_title(line))
}

#check whether the file is RDS by trying to open it and wrapping it in tryCatch
is.RDS = function(x) {
  tryCatch({
    readRDS(x)
    TRUE
  }, error = function(e) {
    FALSE
  })
}

#check whether the file is GIFT by trying to open it and wrapping it in tryCatch
is.GIFT = function(x) {
  tryCatch({
    readLines(x)
    TRUE
  }, error = function(e) {
    FALSE
  }, warning = function(w) {
    FALSE
  })
}
