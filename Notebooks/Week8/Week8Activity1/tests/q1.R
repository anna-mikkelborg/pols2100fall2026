test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- round(office.effect$coefficients, 5) == -0.00395 & round(office.effect$std.error, 5) == 0.06119
        testthat::expect_true(question.correct,
           info = "Remember the format: difference_in_means(x ~ treat, data, condition1='baseline', condition2='treatment')")
      }
    )
  )
)