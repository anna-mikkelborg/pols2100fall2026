test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( tolower(q5.answer) , "a") 
        testthat::expect_true(question.correct,
          info = "Try again!")
      }
    )
  )
)