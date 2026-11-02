test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( q4.answer , FALSE )  | tolower(q4.answer) == 'false'
        testthat::expect_true(question.correct,
                                    info = "Try again!")
      }
    )
  )
)