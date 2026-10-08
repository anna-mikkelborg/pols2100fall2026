test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- round(trump_effect_dems, 5) == -0.00211
        testthat::expect_true(question.correct)
      }
    )
  )
)