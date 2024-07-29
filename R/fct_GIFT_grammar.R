#' @importFrom parcr `%then%`
GIFTBank <- function(){
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


GIFTQuestion <- function(){
  (parcr::zero_or_one(GIFTQuestionTitle()) %using%
     \(x) {
       #question_type = parcr::retrieve("current_question_type")
       #reset question type
       parcr::store("current_question_type" , NULL)
       c(category = parcr::retrieve("current_category"), title = x)
    })%then%
    (GIFTQuestionText() %using%
       \(x) c(text = x)) %then%
    (GIFTQuestionAnswers() %using% \(x) {
      question_type = parcr::retrieve("current_question_type")
      c(question_type = question_type, x)
      }) %then%
    (parcr::zero_or_one(GIFTQuestionText()) %using%
       \(x) c(suffix_text = x)) %then%
    (parcr::zero_or_one(GIFTQuestionFeedback()))
}

#' @importFrom parcr `%thenx%` `%xthen%`
GIFTQuestionAnswers <- function(){
  parcr::literal("{") %thenx%
    splitAnswers() %thenx%
    parcr::zero_or_more(GIFTAnswer()) %xthen%
    parcr::literal("}") %using% \(x) list(answers = x)
}

#within the curly braces, we split the answers
#we cannot do it before because we run the risk of adding new lines in question text
splitAnswers <-function(){
  function(x){
    r_end = x[-1]
    #remove spaces between # and = if any in case of numeric question
    x[1] = gsub("#\\s+=", "#=", x[1])
    #add a negative lookahead to avoid splitting the answer if it is a number
    new_r1 = gsub("(#?=|~)", "\n\\1",x[1])
    r_beg = strsplit(trimws(new_r1), "\n")[[1]]
    if(parcr::retrieve("debug")) message("Splitted answers: ", paste0(r_beg, collapse = "(NL)"))
    return(list(R=c(r_beg, r_end)))
  }
}

GIFTAnswer <- function(){
  parcr::match_s(parse_whole_answer) %using% \(x) list(x)
}


GIFTQuestionTitle <- function() {
  parcr::match_s(parse_title)
}



GIFTQuestionText <- function() {
  parcr::match_s(parse_question_text)
}

GIFTQuestionFeedback <- function() {
  parcr::match_s(parse_question_feedback) %using%
    \(x) c(question_feedback = x)
}
