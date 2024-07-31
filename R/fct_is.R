

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
