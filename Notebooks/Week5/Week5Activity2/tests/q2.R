test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        sol_plot <- ggplot(happiness_data, aes(x = gdpcapita, y = happiness)) + geom_point() + geom_smooth(method = "lm", level = F)
        correct_dataset <- identical(q2.plot$data, happiness_data)
        correct_xvar <- rlang::as_name(sol_plot$mapping$x) == 'gdpcapita'
        correct_yvar <- rlang::as_name(sol_plot$mapping$y) == 'happiness'
        has_geompoint <- !is.null(q2.plot$layers$geom_point)
        has_geomsmooth <- !is.null(q2.plot$layers$geom_smooth)
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