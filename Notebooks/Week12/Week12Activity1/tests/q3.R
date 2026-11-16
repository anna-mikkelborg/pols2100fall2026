test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- q3.answer == FALSE  | tolower(q3.answer) == 'false'
        testthat::expect_true(question.correct)
      }
    )
  )
)