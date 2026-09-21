test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct_answer <- 'a'
        testthat::expect_true(
            q3.answer == correct_answer,
            info = "Not quite. Within the sentence that summarizes the paper's theory, what is the main outcome of interest that the theory is trying to explain?"
            )
      }
    )
  )
)