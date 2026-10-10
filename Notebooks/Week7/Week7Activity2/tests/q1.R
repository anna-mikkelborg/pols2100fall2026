test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        question.correct <- identical(civic_effect, difference_in_means(outcome_voted ~ treat, social, condition1 = 'control', condition2 = 'civic')) # SOLUTION
        testthat::expect_true(question.correct,
                   info = "This doesn't look right. Remember, difference_in_means(outcome ~ treat, dataset, condition1 = 'baseline', condition2 = 'treatment')")
      }
    )
  )
)