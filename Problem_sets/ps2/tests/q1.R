test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- round(trump_effect_avg, 5) == 0.05631
        testthat::expect_true(question.correct)
      }
    )
  )
)