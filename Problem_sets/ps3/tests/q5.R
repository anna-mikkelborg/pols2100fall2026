test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correcta <- identical( round(treatment_effect_CI_upper_end,3) ,
         round(difference_in_means(voted14~treat, data = data)$conf.high,3) ) 
        testthat::expect_true(question.correcta,
                                    info = "Use conf.high to select the upper bound of the 95% CI.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correctb <- identical( round(treatment_effect_CI_lower_end,3) ,
         round(difference_in_means(voted14~treat, data = data)$conf.low,3) ) 
        testthat::expect_true(question.correctb,
                                    info = "Use conf.low to select the lower bound of the 95% CI.")
      }
    )
  )
)