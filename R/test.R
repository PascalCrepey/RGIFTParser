library(parcr)

raw_text = "::AI-taux_attaque::[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est \:{
	~0,4%
	~5,5%
	~14,3%
	=40,0%
	~l’information donnée ne permet pas de calculer le taux d’attaque
}
"


qcms <- function(){
  one_or_more(GIFTBlock()) %then% eof()
}

GIFTBlock <- function(){
  MaybeEmpty() %then%
  (GIFTQuestion() %or% GIFTCategory())
}

GIFTQuestion <- function(){
  GIFTQuestionTitle() %then% GIFTQuestionText() %then% GIFTQuestionAnswers()
}

GIFTQuestionAnswers <- function(){
  one_or_more(GIFTAnswer())
}


parse_title <- function(line){
  m <- stringr::str_match(line, "^::(\\w+)::")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}

GIFTQuestionTitle <- function() {
  match_s(parse_title)
}

parse_question_text <- function(line){
  m <- stringr::str_match(line, "::(\\w+)\{")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}
GIFTQuestionText <- function() {
  match_s(parse_question_text)
}
