
## preprocess text to be parsed
preprocess_text <- function(text) {

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

  vec_text
}
