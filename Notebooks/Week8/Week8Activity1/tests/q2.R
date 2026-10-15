test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        within.tol <- function(correct, submitted, tol) {
            return(correct - tol < submitted & correct + tol > submitted)
        }
        question.correct <- within.tol(
        0.06118912,
        std.error,
        .001) 
        testthat::expect_true(question.correct,
                                    info = "This isn't the standard error.")
      }
    )
  )
)