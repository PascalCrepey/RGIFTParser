#' @importFrom parcr `%then%`
qcms <- function(){
  parcr::one_or_more(GIFTBlock()) %then% parcr::eof()
}

#' @importFrom parcr `%using%` `%or%`
GIFTBlock <- function(){
  parcr::MaybeEmpty() %then%
    (GIFTQuestion() %or% GIFTCategory()) %using%
    function(x) {
      #message("Block: ", x, length(x))
      if(!is.null(unlist(x))) {
        return(list(x))
      } else {
        return(list())
      }
    }
}

GIFTCategory <- function(){
  parcr::MaybeEmpty() %then%
    parcr::match_s(parse_category) %then%
    parcr::MaybeEmpty() %using% function(x) {
      if(parcr::retrieve("debug")) message("Category: ", x)
      parcr::store("current_category" , x)
      return(NULL)
    }
}

#reporter(GIFTCategory())(text)
parse_category <- function(line){
  m <- stringr::str_match(line, "^\\$CATEGORY: ([\\w\\W*]+)$")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}


GIFTQuestion <- function(){
  (parcr::zero_or_one(GIFTQuestionTitle()) %using%
     \(x) c(category = parcr::retrieve("current_category"), title = x)) %then%
    (GIFTQuestionText() %using%
       \(x) c(text = x)) %then%
    GIFTQuestionAnswers() %then%
    (parcr::zero_or_one(GIFTQuestionFeedback()))
}
#' @importFrom parcr `%thenx%` `%xthen%`
GIFTQuestionAnswers <- function(){
  parcr::literal("{") %thenx%
    parcr::one_or_more(GIFTAnswer()) %xthen%
    parcr::literal("}") %using% function(x) list(answers = x)
}

GIFTAnswer <- function(){
  parcr::match_s(parse_whole_answer) %using% function(x) list(x)
}

parse_whole_answer <- function(x) {
  #first get the operator
  operator = parse_operator(x)
  #then get the weight (if there is one)
  weight = parse_weight(x)
  #then get the answer
  answer = parse_answer(x)
  #then get the feedback (if there is one)
  feedback = parse_feedback(x)

  #if no operator or no answer then returns list()
  if(is.null(operator) || is.null(answer)){
    return(list())
  }else{
    res = paste(operator, ":", weight, ":", answer, ":", feedback)
    if(parcr::retrieve("debug")) message("Answer: ", res)
    return(list(operator = operator,
                weight = weight,
                answer = answer,
                feedback = feedback))
  }
}
#parses operator = or ~ with potential space before
parse_operator <-function(line){
  m <- stringr::str_match(line, "^\\s*(=|~)")
  if (is.na(m[1])) {
    return(NULL) # signal failure: not an operator
  } else {
    return(m[2])
  }
}
# parse_operator(" =")
# parse_operator("\t ~sfsf")
# parse_operator("\t ::toei")
#parses weight either positive or negative decimal or integer number
parse_weight <-function(line){
  m <- stringr::str_match(line, "^\\s*(?:=|~)%(\\-?\\d*(?:.|\\,)?\\d*)%")
  if (is.na(m[1])) {
    return(NULL) # signal failure: not a weight
  } else {
    return(as.numeric(sub(",",".",m[2])))
  }
}
# line = " =%50%"
# stringr::str_match(line, "^\\s*(?:=|~)%(\\-?\\d*(?:.|,)?\\d*)%")
# parse_weight(" =%50%")
# parse_weight(" ~%-50%")
# parse_weight(" ~%-33.33%")
# parse_weight(" ~%-33,33%")
# parse_weight("\t ~sfsf")
# parse_weight("\t ::toei")

#parses answer text
parse_answer <-function(line){
  m <- stringr::str_match(line, "^\\s*(?:=|~)(?:%\\-?\\d*(?:.|\\,)?\\d*%)?\\s*([^#]+)\\#*")
  if (is.na(m[1])) {
    return(NULL) # signal failure: not an answer
  } else {
    return(m[2])
  }
}

# parse_answer(" =%50% ceci est une réponse")
# parse_answer(" =%50% ceci est une réponse # ceci est un feedback")


#parses feedback text
parse_feedback <-function(line){
  m <- stringr::str_match(line, "^.*\\#(.*)$")
  if (is.na(m[1])) {
    return(NULL) # signal failure: not a feedback
  } else {
    return(m[2])
  }
}
# parse_feedback(" =%50% ceci est une réponse # ceci est un feedback")
# parse_feedback(" =%50% ceci est une réponse ")

parse_title <- function(line){
  m <- stringr::str_match(line, "^::([:print:]+)::")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}
# test_title = "::AI-taux_attaque"
# parse_title(test_title)

GIFTQuestionTitle <- function() {
  parcr::match_s(parse_title)
}

parse_question_text <- function(line){
  m <- stringr::str_match(line, "([:print:]+)")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a text
  } else {
    return(m[2])
  }
}

GIFTQuestionText <- function() {
  parcr::match_s(parse_question_text)
}

GIFTQuestionFeedback <- function() {
  parcr::match_s(parse_question_feedback) %using%
    \(x) c(question_feedback = x)
}

parse_question_feedback <- function(line){
  m <- stringr::str_match(line, "^####(.*)$")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a feedback
  } else {
    return(m[2])
  }
}
