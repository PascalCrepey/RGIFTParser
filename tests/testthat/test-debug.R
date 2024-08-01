test_that("test debug message", {
  raw = "What is the capital of France? { =Paris#Good answer ! }
  ####A nice city !"
  expect_snapshot(GIFTParser(raw, debug = TRUE))

  expect_snapshot(Quiz$new(raw, debug = TRUE))

})


# test_that("no question found", {
#   text = "This is not a question"
#   expect_error(GIFTParser(text))
# })
#
# test_that("no question found in the string", {
#   text = "Mahatma Gandhi's birthday is an Indian holiday on  {
# ~15th
# ~3rd
# =2nd
# } of October.
#
# Since {
#   ~495 AD
#   =1066 AD
#   ~1215 AD
#   ~ 43 AD
# }
# the town of Hastings England has been 'famous with visitors'."
#   res = GIFTParser(text, debug = TRUE)
# })

