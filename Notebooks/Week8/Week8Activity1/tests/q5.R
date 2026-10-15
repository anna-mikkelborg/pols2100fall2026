test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( experiment.demonstrates.office.lobbying.reduced.bill.support , FALSE )  |
                            identical( tolower(experiment.demonstrates.office.lobbying.reduced.bill.support), 'false')
        testthat::expect_true(question.correct,
                                    info = "Try again! Remember, an estimate doesn't need to be exactly right, it's often different from the truth by 1 or even 2 standard errors.")
      }
    )
  )
)