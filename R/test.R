library(parcr)


qcms <- function(){
  one_or_more(GIFTBlock()) %then% eof()
}

GIFTBlock <- function(){
  MaybeEmpty() %then%
  (GIFTQuestion() %or% GIFTCategory())
}

GIFTCategory <- function(){
  MaybeEmpty() %then%
    match_s(parse_category) %then%
    Spacer()
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
  zero_or_one(GIFTQuestionTitle())
    %then% GIFTQuestionText()
    %then% GIFTQuestionAnswers()
}

GIFTQuestionAnswers <- function(){
  literal("{") %then%
    one_or_more(GIFTAnswer()) %then%
    literal("}")
}

GIFTAnswer <- function(){
  MaybeEmpty() %then%
  operatorAnswer() %then%
    zero_or_one(GIFTweight()) %then%
    GIFTAnswerText() %then%
    zero_or_one(GIFTAnswerFeedback())
}

operatorAnswer <- function(){
  literal("=") %or%
  literal("~")
}

GIFTweight <- function(){
  literal("#") %then% one_or_more(digit())
}

numbers <- function(x) {
  m <- gregexpr("[[:digit:]]+", x)
  matches <- as.numeric(regmatches(x,m)[[1]])
  if (length(matches)==0) {
    return(list()) # we signal parser failure when no numbers were found
  } else {
    return(matches)
  }
}

GIFTAnswerText <- function(){
  one_or_more(not(literal("="))) %then%
    literal("=")
}
GIFTAnswerFeedback <- function(){
  literal("#") %then% one_or_more(not(literal("}")))
}

parse_title <- function(line){
  m <- stringr::str_match(line, "^::([:print:]+)")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}
test_title = "::AI-taux_attaque"
parse_title(test_title)

GIFTQuestionTitle <- function() {
  match_s(parse_title)
}

parse_question_text <- function(line){
  m <- stringr::str_match(line, "::([:print:]+)")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}

GIFTQuestionText <- function() {
  match_s(parse_question_text)
}
test_text = "::[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est :{"
parse_question_text(test_text)
GIFTQuestionText()(test_text)

