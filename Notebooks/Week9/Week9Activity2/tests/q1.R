test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( supply.vs.control ,
         difference_in_means(sd_onefem2014 ~ treat, data,
                                              condition1 = 'control',
                                              condition2 = 'supply') ) 
        testthat::expect_true(question.correct,
                                    info = "Answer doesn't look right. Make sure you've set up your difference_in_means() correctly.")
      }
    )
  )
)