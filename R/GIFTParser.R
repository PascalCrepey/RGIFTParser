
#' Parse a GIFT formatted text into a list of questions
#'
#' @param text A character vector containing the GIFT formatted text to parse
#' @param debug A logical value indicating if the parser should be run in debug mode
#'
#' @return A list of questions
#' @export
#'
GIFTParser <- function(text, debug = FALSE){

  vec_text = preprocess_text(text)

  # store "No category" as the current category
  parcr::store("current_category", "No category")

  if(debug){
    parcr::store("debug", TRUE)
    print(vec_text)
    res = parcr::reporter(GIFTBank())(vec_text)
  }else{
    parcr::store("debug", FALSE)
    res = GIFTBank()(vec_text)
    if(!is.null(res$L)){
      res = res$L
    }else{
      stop("No question found in the string: ", text)
    }
  }
  #now we identify the question type
  res = lapply(res, \(x) {
    question_type = find_question_type(x)
    if(debug){
      message("Question type: ", question_type)
    }
    x$question_type = question_type
    x
  })
  res
}


