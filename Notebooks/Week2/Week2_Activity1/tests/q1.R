test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_true(length(coffee.sales) == 5)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_equal(coffee.sales, c(120, 135, 150, 145, 100))
      }
    )
  )
)