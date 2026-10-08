test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- round(trump_effect_reps, 5) == 0.18328
        testthat::expect_true(question.correct)
      }
    )
  )
)