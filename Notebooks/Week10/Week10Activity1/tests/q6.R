test = list(
  name = "q6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( tolower(q6.answer) , "b") 
        testthat::expect_true(question.correct,
          info = "Try again!")
      }
    )
  )
)