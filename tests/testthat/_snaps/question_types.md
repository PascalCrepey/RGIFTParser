# true/false question

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q1"
      
      [[1]]$text
      [1] "1+1=2"
      
      [[1]]$question_type
      [1] "boolean"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$answer
      [1] "T"
      
      [[1]]$answers[[1]]$feedback
      NULL
      
      
      
      

# multiple choice with specified feedback for right and wrong answers

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q2"
      
      [[1]]$text
      [1] "What's between orange and green in the spectrum?"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$operator
      [1] "="
      
      [[1]]$answers[[1]]$weight
      NULL
      
      [[1]]$answers[[1]]$answer
      [1] "yellow "
      
      [[1]]$answers[[1]]$feedback
      [1] " right; good! "
      
      
      [[1]]$answers[[2]]
      [[1]]$answers[[2]]$operator
      [1] "~"
      
      [[1]]$answers[[2]]$weight
      NULL
      
      [[1]]$answers[[2]]$answer
      [1] "red "
      
      [[1]]$answers[[2]]$feedback
      [1] " wrong, it's yellow "
      
      
      [[1]]$answers[[3]]
      [[1]]$answers[[3]]$operator
      [1] "~"
      
      [[1]]$answers[[3]]$weight
      NULL
      
      [[1]]$answers[[3]]$answer
      [1] "blue "
      
      [[1]]$answers[[3]]$feedback
      [1] " wrong, it's yellow"
      
      
      
      [[1]]$question_type
      [1] "multiple_choice"
      
      

# math range question

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q5"
      
      [[1]]$text
      [1] "What is a number from 1 to 5?"
      
      [[1]]$question_type
      [1] "math_range_precision"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$answer
      [1] 3
      
      [[1]]$answers[[1]]$precision
      [1] 2
      
      
      
      

# math range specified with interval end points

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q6"
      
      [[1]]$text
      [1] "What is a number from 1 to 5?"
      
      [[1]]$question_type
      [1] "math_range_minmax"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$min
      [1] 1
      
      [[1]]$answers[[1]]$max
      [1] 5
      
      
      
      

# multiple numeric answers with partial credit and feedback

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q7"
      
      [[1]]$text
      [1] "When was Ulysses S. Grant born?"
      
      [[1]]$question_type
      [1] "multiple_numeric"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$answer
      [1] 1822
      
      [[1]]$answers[[1]]$precision
      [1] 0
      
      [[1]]$answers[[1]]$feeback
      [1] " Correct! Full credit.          "
      
      
      [[1]]$answers[[2]]
      [[1]]$answers[[2]]$answer
      [1] 1822
      
      [[1]]$answers[[2]]$precision
      [1] 2
      
      [[1]]$answers[[2]]$feeback
      [1] " He was born in 1822. Half credit for being close."
      
      
      
      

# essay

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q8"
      
      [[1]]$text
      [1] "How are you?"
      
      [[1]]$answers
      list()
      
      [[1]]$question_type
      [1] "essay"
      
      

# all types of questions

    Code
      print(res)
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$title
      [1] "Q1"
      
      [[1]]$text
      [1] "1+1=2"
      
      [[1]]$question_type
      [1] "boolean"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$answer
      [1] "T"
      
      [[1]]$answers[[1]]$feedback
      NULL
      
      
      
      
      [[2]]
      [[2]]$category
      [1] "No category"
      
      [[2]]$title
      [1] "Q2"
      
      [[2]]$text
      [1] "What's between orange and green in the spectrum?"
      
      [[2]]$answers
      [[2]]$answers[[1]]
      [[2]]$answers[[1]]$operator
      [1] "="
      
      [[2]]$answers[[1]]$weight
      NULL
      
      [[2]]$answers[[1]]$answer
      [1] "yellow "
      
      [[2]]$answers[[1]]$feedback
      [1] " right; good! "
      
      
      [[2]]$answers[[2]]
      [[2]]$answers[[2]]$operator
      [1] "~"
      
      [[2]]$answers[[2]]$weight
      NULL
      
      [[2]]$answers[[2]]$answer
      [1] "red "
      
      [[2]]$answers[[2]]$feedback
      [1] " wrong, it's yellow "
      
      
      [[2]]$answers[[3]]
      [[2]]$answers[[3]]$operator
      [1] "~"
      
      [[2]]$answers[[3]]$weight
      NULL
      
      [[2]]$answers[[3]]$answer
      [1] "blue "
      
      [[2]]$answers[[3]]$feedback
      [1] " wrong, it's yellow"
      
      
      
      [[2]]$question_type
      [1] "multiple_choice"
      
      
      [[3]]
      [[3]]$category
      [1] "No category"
      
      [[3]]$title
      [1] "Q3"
      
      [[3]]$text
      [1] "Two plus"
      
      [[3]]$answers
      [[3]]$answers[[1]]
      [[3]]$answers[[1]]$operator
      [1] "="
      
      [[3]]$answers[[1]]$weight
      NULL
      
      [[3]]$answers[[1]]$answer
      [1] "two "
      
      [[3]]$answers[[1]]$feedback
      NULL
      
      
      [[3]]$answers[[2]]
      [[3]]$answers[[2]]$operator
      [1] "="
      
      [[3]]$answers[[2]]$weight
      NULL
      
      [[3]]$answers[[2]]$answer
      [1] "2"
      
      [[3]]$answers[[2]]$feedback
      NULL
      
      
      
      [[3]]$suffix_text
      [1] "equals four."
      
      [[3]]$question_type
      [1] "fill_in_the_blank"
      
      
      [[4]]
      [[4]]$category
      [1] "No category"
      
      [[4]]$title
      [1] "Q4"
      
      [[4]]$text
      [1] "Which animal eats which food?"
      
      [[4]]$answers
      [[4]]$answers[[1]]
      [[4]]$answers[[1]]$operator
      [1] "="
      
      [[4]]$answers[[1]]$weight
      NULL
      
      [[4]]$answers[[1]]$answer
      [1] "cat -> cat food "
      
      [[4]]$answers[[1]]$feedback
      NULL
      
      
      [[4]]$answers[[2]]
      [[4]]$answers[[2]]$operator
      [1] "="
      
      [[4]]$answers[[2]]$weight
      NULL
      
      [[4]]$answers[[2]]$answer
      [1] "dog -> dog food"
      
      [[4]]$answers[[2]]$feedback
      NULL
      
      
      
      [[4]]$question_type
      [1] "matching"
      
      
      [[5]]
      [[5]]$category
      [1] "No category"
      
      [[5]]$title
      [1] "Q5"
      
      [[5]]$text
      [1] "What is a number from 1 to 5?"
      
      [[5]]$question_type
      [1] "math_range_precision"
      
      [[5]]$answers
      [[5]]$answers[[1]]
      [[5]]$answers[[1]]$answer
      [1] 3
      
      [[5]]$answers[[1]]$precision
      [1] 2
      
      
      
      
      [[6]]
      [[6]]$category
      [1] "No category"
      
      [[6]]$title
      [1] "Q6"
      
      [[6]]$text
      [1] "What is a number from 1 to 5?"
      
      [[6]]$question_type
      [1] "math_range_minmax"
      
      [[6]]$answers
      [[6]]$answers[[1]]
      [[6]]$answers[[1]]$min
      [1] 1
      
      [[6]]$answers[[1]]$max
      [1] 5
      
      
      
      
      [[7]]
      [[7]]$category
      [1] "No category"
      
      [[7]]$title
      [1] "Q7"
      
      [[7]]$text
      [1] "When was Ulysses S. Grant born?"
      
      [[7]]$question_type
      [1] "multiple_numeric"
      
      [[7]]$answers
      [[7]]$answers[[1]]
      [[7]]$answers[[1]]$answer
      [1] 1822
      
      [[7]]$answers[[1]]$precision
      [1] 0
      
      [[7]]$answers[[1]]$feeback
      [1] " Correct! Full credit.          "
      
      
      [[7]]$answers[[2]]
      [[7]]$answers[[2]]$answer
      [1] 1822
      
      [[7]]$answers[[2]]$precision
      [1] 2
      
      [[7]]$answers[[2]]$feeback
      [1] " He was born in 1822. Half credit for being close."
      
      
      
      
      [[8]]
      [[8]]$category
      [1] "No category"
      
      [[8]]$title
      [1] "Q8"
      
      [[8]]$text
      [1] "How are you?"
      
      [[8]]$answers
      list()
      
      [[8]]$question_type
      [1] "essay"
      
      

