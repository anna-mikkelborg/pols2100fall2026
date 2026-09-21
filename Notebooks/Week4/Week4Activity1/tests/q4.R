test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'g'
        testthat::expect_true(
            q4.answer == correct_answer,
            info = "Not quite. Which item or set of items provides a specific measurement of political institutions and electoral laws?"
            )
      }
    )
  )
)