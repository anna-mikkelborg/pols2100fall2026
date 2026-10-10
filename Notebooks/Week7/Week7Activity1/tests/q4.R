test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct.answer <- round(neighbors.group.this.many.years.older, 5) == -0.08195
        testthat::expect_true(correct.answer,
                              info = "This result doesn't look right.")
      }
    )
  )
)