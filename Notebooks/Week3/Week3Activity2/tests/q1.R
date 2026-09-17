test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_plot <- ggplot(subset(data, republican == 0), aes(x = marriage_opinion, y = marriage_perception)) + geom_point()
        correct_dataset <- identical(dem.graph$data, subset(data, republican == 0))
        correct_xvar <- rlang::as_name(sol_plot$mapping$x) == 'marriage_opinion'
        correct_yvar <- rlang::as_name(sol_plot$mapping$y) == 'marriage_perception'
        testthat::expect_true(correct_dataset,
                                            info = "Make sure that you are using the correct dataset to make your plot.")
        testthat::expect_true(correct_xvar,
                                            info = "Make sure that you are using the correct x variable.")
        testthat::expect_true(correct_yvar,
                                            info = "Make sure that you are using the correct y variable.")
      }
    )
  )
)