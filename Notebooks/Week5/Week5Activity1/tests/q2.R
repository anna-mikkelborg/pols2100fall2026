test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'b'
        testthat::expect_equal(q2.answer, correct_answer, info = "Try again!")
      }
    )
  )
)