test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_true(coffee.mean > 0)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_equal(coffee.mean, 130, tolerance = 1e-6)
      }
    )
  )
)