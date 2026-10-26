test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical( mail_dim ,
              difference_in_means(voted14~treat, data = data) )  | 
        identical( mail_dim ,
              difference_in_means(voted14~treat, data = data, condition1 = 0, condition2 = 1))  | 
        identical( mail_dim ,
              difference_in_means(voted14~treat, data = data, condition1 = '0', condition2 = '1')) 
        testthat::expect_true(question.correct,
         info = "This doesn't look right. Make sure you are using the difference_in_means() command correctly.")
      }
    )
  )
)