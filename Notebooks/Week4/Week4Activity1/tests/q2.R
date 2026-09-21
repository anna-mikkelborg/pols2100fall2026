test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'b'
        testthat::expect_true(
            q2.answer == correct_answer,
            info = "Not quite. Within the sentence that summarizes the paper's theory, what is the variable argued to cause the outcome of interest?"
            )
      }
    )
  )
)