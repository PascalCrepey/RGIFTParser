


is.feedback <- function(line){
  return(!is.na(stringr::str_match(line, "^####(.*)$")[1]))
}

##check whether the answer is boolean or not
is.boolean_answer <- function(x){
  return(!is.null(parse_boolean_answer(x)))
}

##check whether the answer is numeric or not
is.numeric_answer <- function(x){
  return(!is.null(parse_numeric_answer(x)))
}

## check whether the line is a title
is.title <- function(line){
  return(!identical(list(),parse_title(line)))
}
