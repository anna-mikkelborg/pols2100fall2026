test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
<<<<<<< Updated upstream
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
=======
        question.correct <- identical( republicans.only , subset(data, republican == 1) ) 
        testthat::expect_true(question.correct,
                                    info = "republicans.only does not look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        rep.graph.with.line.correct <- qplot(marriage_opinion, marriage_perception, data = republicans.only) + geom_smooth(method = 'lm')
        if(length(rep.graph.with.line$layers) < 2) {
            question.correct <- FALSE
        } else {
        question.correct <- all.equal(rep.graph.with.line.correct$data, rep.graph.with.line$data) & 
            all.equal(rep.graph.with.line.correct$mapping, rep.graph.with.line$mapping) &
            all.equal(g.correct.q2$layers[[2]]$constructor, dem.graph.with.line$layers[[2]]$constructor)
        }
        testthat::expect_true(question.correct,
                                    info = "rep.graph.with.line does not look right.")
>>>>>>> Stashed changes
      }
    )
  )
)