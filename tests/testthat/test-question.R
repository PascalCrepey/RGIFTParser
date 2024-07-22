test_that("building a question object", {
  raw = "What is the capital of France? { =Paris#Good answer ! }
  ####A nice city !"
  res = GIFTParser(raw)

  q = Question$new(res$L[[1]])
  expect_true("R6" %in% class(q))
  expect_true("Question" %in% class(q))

})

test_that("building a complex question object", {
  raw = "::AI-taux_attaque::[html]Pendant la dernière semaine du mois de
  septembre 2007, 90 personnes d’un petit village du Morbihan (population 650
  habitants) participent à un dîner préparé par un épidémiologiste farceur.
  Au cours des 2 jours suivants, 36 participants développent une infection à
  <i>Salmonella</i>. Le taux d'attaque parmi les participants est :{
	~0,4%
	~5,5%
	~14,3%
	=40,0%
	~l’information donnée ne permet pas de calculer le taux d’attaque}
  ####Question issue du cours IDEA"
  res = GIFTParser(raw)

  q = Question$new(res$L[[1]])
  expect_true("R6" %in% class(q))
  expect_true("Question" %in% class(q))

})
