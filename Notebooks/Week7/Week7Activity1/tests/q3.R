test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        correct.mean <- effect.of.neighbors.mail == 
        mean(social[social$treat_neighbors==1,]$outcome_voted) -
            mean(social[social$control_group==1,]$outcome_voted)
        testthat::expect_true(correct.outcome,
                              info = "The treatment effect doesn't look right. Are you calculating the effect of the neighbors treatment?")
      }
    )
  )
)