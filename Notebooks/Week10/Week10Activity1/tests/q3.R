test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( q3.answer , TRUE )  | tolower(q3.answer) == 'true'
        testthat::expect_true(question.correct,
                                    info = "Take another look...")
      }
    )
  )
)