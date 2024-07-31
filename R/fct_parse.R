

# parse a category
parse_category <- function(line){
  m <- stringr::str_match(line, "^\\$CATEGORY: ([\\w\\W*]+)$")
  if (is.na(m[1])) {
    list() # signal failure: not a title
  } else {
    m[2]
  }
}

# parse a whole answer
parse_whole_answer <- function(x) {
  #first get the operator
  operator = parse_operator(x)
  #then get the weight (if there is one)
  weight = parse_weight(x)
  #then get the answer
  answer = parse_answer(x)
  #get the feedback (if there is one)
  feedback = parse_feedback(x)
  #browser()
  if(is.boolean_answer(x)){
    boolean = parse_boolean_answer(x)
    parcr::store("current_question_type" , "boolean")
    res = paste("boolean:", boolean, ":", feedback)
    if(parcr::retrieve("debug")) message("Answer: ", res)
    list(answer = boolean,
         feedback = feedback)
  }else if(is.numeric_answer(x)){
    parcr::store("current_question_type" , "numeric")
    if(parcr::retrieve("debug")) message("Question set as numeric.")
    c(parse_numeric_answer(x), feeback = feedback)
  }else if(!is.null(answer)){
    res = paste(operator, ":", weight, ":", answer, ":", feedback)
    if(parcr::retrieve("debug")) message("Answer: ", res)
    list(operator = operator,
         weight = weight,
         answer = answer,
         feedback = feedback)
  }else{
    list()
  }
}

#parse numeric answer
parse_numeric_answer <- function(line){

  #the # at the beginning is required only for the first answer
  #if we do not know that it's a numeric answer (status already stored)
  #we check for it and return NULL if we do not get it

  current_question_type = parcr::retrieve("current_question_type")
  if(is.null(current_question_type) || current_question_type != "numeric"){
    m_test <- stringr::str_match(line, "^\\s*#")
    if(is.na(m_test[1])) {
      return(NULL) # signal failure: not a numeric answer
    }
  }

  # /^\s*#?\s*=(?:%\-?\d*(?:\.|,)?\d*%)?\s*(\-?\d+(?:(?:\.|,)?\d+)?)(?:\:(\-?\d+(?:(?:\.|,)?\d+)?))?\s*#*/gm
  #numeric with precision
  m_p <- stringr::str_match(line, r"(^\s*#?\s*=?(?:%\-?\d*(?:\.|,)?\d*%)?\s*(\-?\d+(?:(?:\.|,)?\d+)?)(?:\:(\-?\d+(?:(?:\.|,)?\d+)?))?\s*#*)")

  # /^\s*#?\s*=(?:%\-?\d*(?:\.|,)?\d*%)?\s*(\-?\d+(?:(?:\.|,)?\d+)?)(?:\.\.(\-?\d+(?:(?:\.|,)?\d+)?))?\s*#*/gm
  #numeric with range
  m_r <- stringr::str_match(line, r"(^\s*#?\s*=?(?:%\-?\d*(?:\.|,)?\d*%)?\s*(\-?\d+(?:(?:\.|,)?\d+)?)(?:\.\.(\-?\d+(?:(?:\.|,)?\d+)?))?\s*#*)")

  if (is.na(m_p[1]) && is.na(m_r[1])){
    return(NULL) # signal failure: not a numeric answer
  } else if(!is.na(m_p[3])){
    list(answer = as.numeric(m_p[2]),
         precision = as.numeric(m_p[3]))
  } else if(!is.na(m_r[3])){
    list(min = as.numeric(m_r[2]),
         max = as.numeric(m_r[3]))
  } else {
    list(answer = as.numeric(m_p[2]))
  }
}

#parse Boolean answer T, TRUE, F, FALSE
parse_boolean_answer <- function(line){
  m <- stringr::str_match(line, "^\\s*(T|TRUE|F|FALSE)\\s*")
  if (is.na(m[1])) {
    NULL # signal failure: not a Boolean answer
  } else {
    m[2]
  }
}

#parse operator = or ~ with potential space before
parse_operator <-function(line){
  m <- stringr::str_match(line, "^\\s*(=|~)")
  if (is.na(m[1])) {
    NULL # signal failure: not an operator
  } else {
    m[2]
  }
}

#parse weight either positive or negative decimal or integer number
parse_weight <-function(line){
  m <- stringr::str_match(line, "^\\s*(?:=|~)%(\\-?\\d*(?:.|\\,)?\\d*)%")
  if (is.na(m[1])) {
    NULL # signal failure: not a weight
  } else {
    as.numeric(sub(",",".",m[2]))
  }
}

#parse answer text
parse_answer <-function(line){
  m <- stringr::str_match(line, "^\\s*(?:=|~)(?:%\\-?\\d*(?:.|\\,)?\\d*%)?\\s*([^#]+)\\#*")
  if (is.na(m[1])) {
    NULL # signal failure: not an answer
  } else {
    m[2]
  }
}

#parse feedback text for answer
parse_feedback <-function(line){
  m <- stringr::str_match(line, "^.+\\#(.*)$")
  if (is.na(m[1])) {
    NULL # signal failure: not a feedback
  } else {
    m[2]
  }
}

#parse question title
parse_title <- function(line){
  m <- stringr::str_match(line, "^::([:print:]+)::")
  if (is.na(m[1])) {
    list() # signal failure: not a title
  } else {
    m[2]
  }
}

#parse question text
parse_question_text <- function(line){
  m <- stringr::str_match(line, "([:print:]+)")
  if (is.na(m[1]) || is.feedback(line) || is.title(line)) {
    list() # signal failure: not a text
  } else {
    if(parcr::retrieve("debug")) message("Question text: ", m[2])
    m[2]
  }
}

#parse question feedback
parse_question_feedback <- function(line){
  m <- stringr::str_match(line, "^####(.*)$")
  if (is.na(m[1])) {
    list() # signal failure: not a feedback
  } else {
    m[2]
  }
}
