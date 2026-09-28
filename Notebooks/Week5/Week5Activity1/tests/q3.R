test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'd'
        testthat::expect_equal(q3.answer, correct_answer, info = "Try again!")
      }
    )
  )
)