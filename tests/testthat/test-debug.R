test_that("test debug message", {
  raw = "What is the capital of France? { =Paris#Good answer ! }
  ####A nice city !"
  expect_snapshot(GIFTParser(raw, debug = TRUE))

  expect_snapshot(Quiz$new(raw, debug = TRUE))

})
