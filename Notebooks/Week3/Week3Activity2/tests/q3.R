test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_plot2 <- ggplot(subset(data, republican == 1), aes(x = marriage_opinion, y = marriage_perception)) + geom_point()
        correct_dataset2 <- identical(rep.graph.with.line$data, subset(data, republican == 1))
        correct_xvar2 <- rlang::as_name(sol_plot2$mapping$x) == 'marriage_opinion'
        correct_yvar2 <- rlang::as_name(sol_plot2$mapping$y) == 'marriage_perception'
        testthat::expect_true(correct_dataset2,
                                            info = "Make sure that you are using the correct dataset to make your plot.")
        testthat::expect_true(correct_xvar2,
                                            info = "Make sure that you are using the correct x variable.")
        testthat::expect_true(correct_yvar2,
                                            info = "Make sure that you are using the correct y variable.")
      }
    )
  )
)