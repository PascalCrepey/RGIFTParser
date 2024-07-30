# test debug message

    Code
      GIFTParser(raw, debug = TRUE)
    Output
      [1] "What is the capital of France?" "{"                             
      [3] "=Paris#Good answer !"           "}"                             
      [5] "####A nice city !"             
    Message
      Question text: What is the capital of France?
      Splitted answers: =Paris#Good answer !
      Answer: = :  : Paris : Good answer !
    Output
      [[1]]
      [[1]]$category
      [1] "No category"
      
      [[1]]$text
      [1] "What is the capital of France?"
      
      [[1]]$answers
      [[1]]$answers[[1]]
      [[1]]$answers[[1]]$operator
      [1] "="
      
      [[1]]$answers[[1]]$weight
      NULL
      
      [[1]]$answers[[1]]$answer
      [1] "Paris"
      
      [[1]]$answers[[1]]$feedback
      [1] "Good answer !"
      
      
      
      [[1]]$question_feedback
      [1] "A nice city !"
      
      

---

    Code
      Quiz$new(raw, debug = TRUE)
    Output
      [1] "What is the capital of France?" "{"                             
      [3] "=Paris#Good answer !"           "}"                             
      [5] "####A nice city !"             
    Message
      Question text: What is the capital of France?
      Splitted answers: =Paris#Good answer !
      Answer: = :  : Paris : Good answer !
    Output
      Quiz: 
      Question:  ( No category )
       What is the capital of France? 
      Answers: 
      	Paris (True:  Good answer ! )
      Feedback:  A nice city ! 
      Quiz containing  1  question 

