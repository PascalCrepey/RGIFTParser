
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
  #remove comments indicated by // to the end of the line
  text = gsub("//.*\n", "", text, perl = TRUE)
  ## the parcr package needs to have primary elements on new lines
  ## so we pre-process the text to ensure that the right elements are on new lines
  #first we remove all new lines
  text = gsub("\n", " ", text)
  ## then we add new lines before and/or after the primary elements
  # new lines for question titles
  text = gsub("(::[^:]+::)", "\n\\1\n", text)
  #here we use R raw text format r"()" to avoid double escaping
  #new lines for answers { and }
  text = gsub(r"((\{|\}))", "\n\\1\n", x = text, perl = TRUE)
  #new line for general feedback
  text = gsub("(####)", "\n\\1", x = text)
  text = gsub("\\$CATEGORY", "\n\\$CATEGORY", text)
  #remove trailing and leading whitespace (before and after \n)
  text = gsub("\n\\s+", "\n", text) |> gsub("\\s+\n", "\n", x = _) |>
    gsub("^\\s+", "", x = _) |> gsub("\\s+$", "", x = _)

  vec_text = strsplit(text,"\n")[[1]]

  # store "No category" as the current category
  parcr::store("current_category", "No category")

  if(debug){
    parcr::store("debug", TRUE)
    print(vec_text)
    res = parcr::reporter(GIFTBank())(vec_text)
  }else{
    parcr::store("debug", FALSE)
    res = GIFTBank()(vec_text)
  }

  return(res$L)
}


