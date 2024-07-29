
<!-- README.md is generated from README.Rmd. Please edit that file -->

# RGIFTParser

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/PascalCrepey/RGIFTParser/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/PascalCrepey/RGIFTParser/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/PascalCrepey/RGIFTParser/branch/main/graph/badge.svg)](https://app.codecov.io/gh/PascalCrepey/RGIFTParser?branch=main)
<!-- badges: end -->

The goal of RGIFTParser is to provide a parser for the GIFT format. The
GIFT format is a simple and flexible way to create quizzes. It is used
by the Moodle platform. The parser is based on the parcr package.

## Installation

You can install the development version of RGIFTParser from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("PascalCrepey/RGIFTParser")
```

## Example

Let’s say you have questions in a GIFT format like that:

``` r

questions_gift = "
::Question 1::
Which planet is known as the Red Planet?
{
    =Mars#Correct! Mars is known as the Red Planet due to its reddish appearance.
    ~Earth#Incorrect. Earth is known as the Blue Planet.
    ~Venus#Incorrect. Venus is often called Earth's twin but not the Red Planet.
    ~Jupiter#Incorrect. Jupiter is the largest planet in our solar system.
    ~Saturn#Incorrect. Saturn is known for its prominent ring system.
}

::Question 2::
What is the capital of France?
{
    =Paris#Correct! Paris is the capital of France.
    ~London#Incorrect. London is the capital of the United Kingdom.
    ~Berlin#Incorrect. Berlin is the capital of Germany.
    ~Madrid#Incorrect. Madrid is the capital of Spain.
    ~Rome#Incorrect. Rome is the capital of Italy.
}

::Question 3::
What is the chemical symbol for gold?
{
    =Au#Correct! Au is the chemical symbol for gold, derived from its Latin name 'Aurum'.
    ~Ag#Incorrect. Ag is the chemical symbol for silver.
    ~Fe#Incorrect. Fe is the chemical symbol for iron.
    ~Pb#Incorrect. Pb is the chemical symbol for lead.
    ~Hg#Incorrect. Hg is the chemical symbol for mercury.
}
"
```

Then, you can parse the questions with the following code:

``` r

library(RGIFTParser)

my_quiz = Quiz$new(questions_gift)

my_quiz
#> Quiz: 
#> Quiz containing  0  question
```

If you prefer a simple list format instead of the R6 objects (Quiz,
Question, Answer), you can use the `GIFTParser` function:

``` r

questions = GIFTParser(questions_gift)

invisible(lapply(questions, function(x) cat(x$title, ": ", x$text, "\n")))
```
