test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct.subset <- identical(control.group, social[social$control_group==1,])
        correct.outcome <- round(meanControl, 5) == 0.3049
        testthat::expect_true(correct.subset,
                              info = "the subset doesn't look right.")
        testthat::expect_true(correct.outcome,
                              info = "the mean doesn't look right.")
      }
    )
  )
)