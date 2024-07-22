
#' Parse a GIFT formatted text into a list of questions
#'
#' @param text A character vector containing the GIFT formatted text to parse
#' @param debug A logical value indicating if the parser should be run in debug mode
#'
#' @return A list of questions
#' @export
#'
GIFTParser <- function(text, debug = FALSE){
  if(length(text) > 1) {
    text = paste(text, collapse = "")
  }
  text = gsub("\n", " ", text)
  text = gsub("(::[^:]+::)", "\n\\1\n", text)
  #here we use R raw text format r"()" to avoid double escaping
  text = gsub(r"((\{|\}|(?<!\\)=|~|(?:####)))", "\n\\1", x = text, perl = TRUE)
  text = gsub("\\$CATEGORY", "\n\\$CATEGORY", text)
  #remove trailing and leading whitespace (before and after \n)
  text = gsub("\n\\s+", "\n", text) |> gsub("\\s+\n", "\n", x = _) |>
    gsub("^\\s+", "", x = _) |> gsub("\\s+$", "", x = _)

  vec_text = strsplit(text,"\n")[[1]]

  # store "No category" as the current category
  parcr::store("current_category", "No category")
 # browser()
  if(debug){
    parcr::store("debug", TRUE)
    print(vec_text)
    res = parcr::reporter(qcms())(vec_text)
  }else{
    parcr::store("debug", FALSE)
    res = qcms()(vec_text)
  }

  return(res)
}

