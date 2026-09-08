test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_true(length(cocoa.sales) == 5)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_equal(cocoa.sales, c(60, 45, 30, 40, 75))
      }
    )
  )
)