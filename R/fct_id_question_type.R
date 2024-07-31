# Identify question type from its list format
# question types maybe: multiple choice, boolean, short answer, essay, numeric
find_question_type = function(x){
  if(is.boolean_question(x)){
    "boolean"
  }else if(is.math_range_precision(x)){
    "math_range_precision"
  }else if(is.math_range_minmax(x)){
    "math_range_minmax"
  }else if(is.multiple_numeric_question(x)){
    "multiple_numeric"
  }else if(is.fillintheblank(x)){
    "fill_in_the_blank"
  }else if(is.matching(x)){
    "matching"
  }else if(is.short_question(x)){
    "short_answer"
  }else if(is.essay(x)){
    "essay"
  }else if(is.multiple_choice(x)){
    "multiple_choice"
  }else{
    stop("Question type not recognized:", x)
  }
}

is.boolean_question = function(x){
  !is.null(x$answers) &&
    length(x$answers) == 1 &&
    !is.null(x$answers[[1]]$answer) &&
    toupper(x$answers[[1]]$answer) %in% c("T", "F", "TRUE", "FALSE")
}

is.math_range_precision = function(x){
  !is.null(x$answers) &&
    length(x$answers) == 1 &&
    !is.null(x$answers[[1]]$precision)
}

is.math_range_minmax = function(x){
  !is.null(x$answers) &&
    length(x$answers) == 1 &&
    !is.null(x$answers[[1]]$min) &&
    !is.null(x$answers[[1]]$max)
}
is.multiple_numeric_question = function(x){
  !is.null(x$answers) &&
    length(x$answers) > 1 &&
    all(sapply(x$answers, \(x) is.numeric(x$answer)))
}

is.short_question = function(x){
  !is.null(x$answers) &&
    length(x$answers) == 1 &&
    is.null(x$answers[[1]]$min) &&
    is.null(x$answers[[1]]$max)
}
is.essay = function(x){
  identical(x$answers, list())
}

is.multiple_choice = function(x){
  !is.null(x$answers) &&
    length(x$answers) > 1 &&
    all(sapply(x$answers, \(x) !is.null(x$answer))) &&
    !all(sapply(x$answers, \(x) is.numeric(x$answer)))
}

is.fillintheblank = function(x){
  !is.null(x$answers) &&
    !is.null(x$suffix_text)
}

is.matching = function(x){
  !is.null(x$answers) &&
    length(x$answers) > 1 &&
    all(sapply(x$answers, \(x) !is.null(x$answer))) &&
    all(sapply(x$answers, \(x) grepl("->", x$answer)))
}
