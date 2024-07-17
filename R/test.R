library(parcr)

GIFTParser <- function(text, debug = FALSE){
  if(length(text) > 1) {
    text = paste(text, collapse = "")
  }
  text = gsub("\n", " ", text)
  text = gsub("(::[^:]+::)", "\n\\1\n", text)
  #here we use R raw text format r"()" to avoid double escaping
  text = gsub(r"((\{|\}|(?<!\\)=|~))", "\n\\1", x = text, perl = TRUE)
  text = gsub("\\$CATEGORY", "\n\\$CATEGORY", text)
  #remove trailing and leading whitespace (before and after \n)
  text = gsub("\n\\s+", "\n", text) |> gsub("\\s+\n", "\n", x = _) |>
    gsub("^\\s+", "", x = _) |> gsub("\\s+$", "", x = _)
  vec_text = strsplit(text,"\n")[[1]]
 # browser()
  if(debug){
    print(vec_text)
    res = reporter(qcms())(vec_text)
  }else{
    res = qcms()(vec_text)
  }

  return(res)
}

qcms <- function(){
  one_or_more(GIFTBlock()) %then% eof()
}

GIFTBlock <- function(){
  MaybeEmpty() %then%
  (GIFTQuestion() %or% GIFTCategory()) %using%
    function(x) list(x)
}

message_category <- function(x){
  message("we have a category")
  return(x)
}

GIFTCategory <- function(){
  MaybeEmpty() %then%
    match_s(parse_category) %then%
    MaybeEmpty() %using% function(x) list(category = x)
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
# line = "$CATEGORY: tom/dick/harry"
#parse_category(raw_text)

GIFTQuestion <- function(){
  zero_or_one(GIFTQuestionTitle()) %then%
    GIFTQuestionText() %then%
    GIFTQuestionAnswers()
}

GIFTQuestionAnswers <- function(){
  literal("{") %then%
    one_or_more(GIFTAnswer()) %then%
    literal("}")
}

GIFTAnswer <- function(){
  match_s(parse_whole_answer)
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
    #do something
    res = paste(operator, ":", weight, ":", answer, ":", feedback)
    message("it works for ", res)
    return(res)
  }
}
#parses operator = or ~ with potential space before
parse_operator <-function(line){
  m <- stringr::str_match(line, "^\\s*(=|~)")
  if (is.na(m[1])) {
    return(NULL) # signal failure: not a title
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
    return(NULL) # signal failure: not a title
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
    return(NULL) # signal failure: not a parse_feedback
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
  match_s(parse_title)
}

parse_question_text <- function(line){
  m <- stringr::str_match(line, "([:print:]+)")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}

GIFTQuestionText <- function() {
  match_s(parse_question_text)
}


