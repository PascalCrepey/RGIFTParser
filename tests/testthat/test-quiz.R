test_that("building a simple quiz object with one question", {
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

  quiz = Quiz$new(raw)
  expect_true("R6" %in% class(quiz))
  expect_true("Quiz" %in% class(quiz))
  expect_snapshot(print(quiz))

})

test_that("building a simple quiz object with two questions", {
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
  ####Question issue du cours IDEA
  ::AI-types_signaux:: Quels types de signaux alimentent le dispositif de veille sanitaire ?
{
~%33.33333% Les signaux issus des surveillances sanitaires et environnementales
~%33.33333% Les signalements d’évènements sanitaires inhabituels
~%33.33333% Les évènements ou information repérées dans la presse scientifique, les réseaux de veille internationaux ou les médias
~%-50% Les relevés d’écoutes téléphoniques
~%-50% Les données de recensement de l’INSEE
}
  ####Question issue du cours IDEA"

  quiz = Quiz$new(raw)
  expect_true("R6" %in% class(quiz))
  expect_true("Quiz" %in% class(quiz))
  expect_snapshot(print(quiz))

})
