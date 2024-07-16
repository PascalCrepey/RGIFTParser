library(parcr)

raw_text <- "

$CATEGORY: test

::AI-taux_attaque::[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village du Morbihan (population 650 habitants) participent à un dîner préparé par un épidémiologiste farceur. Au cours des 2 jours suivants, 36 participants développent une infection à <i>Salmonella</i>. Le taux d'attaque parmi les participants est :{
	~0,4%
	~5,5%
	~14,3%
	=40,0%
	~l’information donnée ne permet pas de calculer le taux d’attaque
}"

text = strsplit(raw_text, "\n")[[1]]

raw_text2 = "What two people are entombed in Grant's tomb? {
   ~%-100%No one
   ~%50%Grant
   ~%50%Grant's wife
   ~%-100%Grant's father
}"


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
parse_category(raw_text)

GIFTQuestion <- function(){
  GIFTQuestionTitle() %then% GIFTQuestionText() %then% GIFTQuestionAnswers()
}

GIFTQuestionAnswers <- function(){
  literal("{") %then%
    one_or_more(GIFTAnswer()) %then%
    literal("}")
}

GIFTAnswer <- function(){
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

GIFTAnswerText <- function(){
  one_or_more(not(literal("="))) %then%
    literal("=")
}
GIFTAnswerFeedback <- function(){
  literal("#") %then% one_or_more(not(literal("}")))
}

parse_title <- function(line){
  m <- stringr::str_match(line, "^::([\\w\\W]+)::")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}
# test_title = "::AI-taux_attaque::"
# parse_title(test_title)

GIFTQuestionTitle <- function() {
  match_s(parse_title)
}

parse_question_text <- function(line){
  m <- stringr::str_match(line, "::(\\w+){")
  if (is.na(m[1])) {
    return(list()) # signal failure: not a title
  } else {
    return(m[2])
  }
}

GIFTQuestionText <- function() {
  match_s(parse_question_text)
}


res = qcms()(text)
res2 = qcms()(raw_text2)
print(res)
print(res2)


reporter(qcms())(text)
