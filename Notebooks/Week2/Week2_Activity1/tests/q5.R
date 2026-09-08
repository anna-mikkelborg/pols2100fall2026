test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_true(coffee.cocoa.gap > 0)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_equal(coffee.cocoa.gap, 80, tolerance = 1e-6)
      }
    )
  )
)