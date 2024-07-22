test_that("MCQ with weigths", {
  raw = "What two people are entombed in Grant's tomb? { ~%-50%No one ~%50%Grant ~%50%Grant's wife ~%-50%Grant's father }"
  res = GIFTParser(raw)
  expect_type(res, "list")
  raw = "::Jesus' hometown:: Jesus Christ was from {     =Nazareth#Yes! That's right!     =%75%Nazereth#Right, but misspelled.     =%25%Bethlehem#He was born here, but not raised here. } "
  res = GIFTParser(raw)
  expect_type(res, "list")
  expect_equal(res[[1]]$answers[[3]]$weight, 25)
})


test_that("Question title", {
  raw = "::AI-taux_attaque::"
  expect_equal(parse_title(raw), "AI-taux_attaque")
})

test_that("Question text",{
  raw = "[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village :"
  expect_equal(parse_question_text(raw), "[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village :")
  expect_equal(RGIFTParser:::GIFTQuestionText()(raw)$L[[1]], "[html]Pendant la dernière semaine du mois de septembre 2007, 90 personnes d’un petit village :")
})

test_that("Single question", {
  raw = "What is the capital of France? { =Paris#Good answer ! }
  ####A nice city !"
  res = GIFTParser(raw)
  expect_type(res, "list")
  expect_equal(res[[1]]$title, NULL)
  expect_equal(res[[1]]$text, "What is the capital of France?")
  expect_equal(res[[1]]$answers[[1]]$feedback, "Good answer !")
  expect_equal(res[[1]]$answers[[1]]$answer, "Paris")
  expect_equal(res[[1]]$question_feedback, "A nice city !")

})
test_that("Whole GIFT file", {
  #read the GIFT file
  text = readLines(system.file("extdata/test.gift", package = "RGIFTParser"))
  res = GIFTParser(text)
  expect_type(res, "list")
})


