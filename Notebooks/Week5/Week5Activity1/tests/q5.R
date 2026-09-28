test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'c'
        testthat::expect_equal(q5.answer, correct_answer, info = "Try again!")
      }
    )
  )
)