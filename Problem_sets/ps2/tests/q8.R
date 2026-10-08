test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- abs(round(diff_opinions, 5)) == 0.03675
        testthat::expect_true(question.correct)
      }
    )
  )
)