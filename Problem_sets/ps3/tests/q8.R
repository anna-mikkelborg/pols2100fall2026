test = list(
  name = "q8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( round(max.plausible.voters.turned.out,3) ,
         round(difference_in_means(voted14~treat, data = data)$conf.high * 10000,3) ) 
        testthat::expect_true(question.correct,
               info = "Review the end of Week 9, Lecture 2.")
      }
    )
  )
)