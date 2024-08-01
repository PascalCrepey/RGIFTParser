test_that("true/false question", {
  text = "// true/false
::Q1:: 1+1=2 {T}"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "boolean")
})

test_that("multiple choice with specified feedback for right and wrong answers",{
  text = "// multiple choice with specified feedback for right and wrong answers
::Q2:: What's between orange and green in the spectrum?
{ =yellow # right; good! ~red # wrong, it's yellow ~blue # wrong, it's yellow }"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "multiple_choice")
})

test_that("fill-in-the-blank", {
  text = "// fill-in-the-blank
::Q3:: Two plus {=two =2} equals four."
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "fill_in_the_blank")
})

test_that("matching", {
  text = "// matching
::Q4:: Which animal eats which food? { =cat -> cat food =dog -> dog food }"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "matching")
})

test_that("math range question", {
  text = "// math range question
::Q5:: What is a number from 1 to 5? {#3:2}"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "math_range_precision")
})

test_that("math range specified with interval end points", {
  text = "// math range specified with interval end points
::Q6:: What is a number from 1 to 5? {#1..5}"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "math_range_minmax")
})

test_that("multiple numeric answers with partial credit and feedback", {
  text = "// multiple numeric answers with partial credit and feedback
::Q7:: When was Ulysses S. Grant born? {#
         =1822:0      # Correct! Full credit.
         =%50%1822:2  # He was born in 1822. Half credit for being close.
}"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "multiple_numeric")
})

test_that("essay", {
  text = "// essay
::Q8:: How are you? {}"
  res = GIFTParser(text)
  expect_equal(find_question_type(res[[1]]), "essay")
})


test_that("all types of questions", {
  text = "// true/false
::Q1:: 1+1=2 {T}

// multiple choice with specified feedback for right and wrong answers
::Q2:: What's between orange and green in the spectrum?
{ =yellow # right; good! ~red # wrong, it's yellow ~blue # wrong, it's yellow }

// fill-in-the-blank
::Q3:: Two plus {=two =2} equals four.

// matching
::Q4:: Which animal eats which food? { =cat -> cat food =dog -> dog food }

// math range question
::Q5:: What is a number from 1 to 5? {#3:2}

// math range specified with interval end points
::Q6:: What is a number from 1 to 5? {#1..5}
// translated on import to the same as Q5, but unavailable from Moodle question interface

// multiple numeric answers with partial credit and feedback
::Q7:: When was Ulysses S. Grant born? {#
         =1822:0      # Correct! Full credit.
         =%50%1822:2  # He was born in 1822. Half credit for being close.
}

// essay
::Q8:: How are you? {}"

  res = GIFTParser(text)
  ids_from_find = sapply(res, \(x) find_question_type(x))
  ids_from_parser = sapply(res, \(x) x$question_type) |> unlist()

  expect_equal(ids_from_find, ids_from_parser)

})

