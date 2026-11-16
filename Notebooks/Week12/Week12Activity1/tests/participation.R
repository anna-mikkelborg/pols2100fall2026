test = list(
  name = "participation",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(TRUE)
      }
    )
  )
)