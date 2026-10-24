test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        question.correct <- identical( p.val.is.stat.sig , FALSE )  | tolower(p.val.is.stat.sig) == 'false'
        testthat::expect_true(question.correct,
                                    info = "Statistically significant means the p-value is less than 0.05.")
      }
    )
  )
)