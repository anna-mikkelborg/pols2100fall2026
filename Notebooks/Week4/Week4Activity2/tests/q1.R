test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_plot <- ggplot(data, aes(x = elect_disprop, y = turnout)) + geom_point() + geom_smooth(method = "lm", level = F)
        correct_dataset <- identical(q1.plot$data, data)
        correct_xvar <- rlang::as_name(sol_plot$mapping$x) == 'elect_disprop'
        correct_yvar <- rlang::as_name(sol_plot$mapping$y) == 'turnout'
        has_geompoint <- !is.null(q1.plot$layers$geom_point)
        has_geomsmooth <- !is.null(q1.plot$layers$geom_smooth)
        testthat::expect_true(correct_dataset,
                                            info = "Make sure that you are using the correct dataset to make your plot.")
        testthat::expect_true(correct_xvar,
                                            info = "Make sure that you are assigning the independent variable as your x variable.")
        testthat::expect_true(correct_yvar,
                                            info = "Make sure that you are assigning the dependent variable as your y variable.")
        testthat::expect_true(has_geompoint,
                                            info = "Make sure to plot the values in the dataset using geom_point().")
        testthat::expect_true(has_geomsmooth,
                                            info = "Make sure to plot the line of best fit using geom_smooth().")
      }
    )
  )
)