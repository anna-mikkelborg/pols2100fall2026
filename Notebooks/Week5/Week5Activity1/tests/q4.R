test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'a'
        testthat::expect_equal(q4.answer, correct_answer, info = "Try again!")
      }
    )
  )
)