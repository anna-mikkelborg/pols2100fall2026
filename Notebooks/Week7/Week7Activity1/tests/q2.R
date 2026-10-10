test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct.subset <- identical(neighbors.group, social[social$treat_neighbors==1,])
        correct.outcome <- round(meanNeighbors, 5) == 0.3968
        testthat::expect_true(correct.subset,
                              info = "the subset doesn't look right.")
        testthat::expect_true(correct.outcome,
                              info = "the mean doesn't look right.")
      }
    )
  )
)