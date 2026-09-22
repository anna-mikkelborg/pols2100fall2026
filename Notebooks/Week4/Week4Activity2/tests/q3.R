test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        correct_answer <- "switzerland"
        q3.answer <- stringr::str_to_lower(q3.answer)
        testthat::expect_equal(q3.answer, correct_answer, "Try again. If you are sure you have the right country, check your spelling and make sure you put your answer in quotation marks! This answer is not case-sensitive.")
      }
    )
  )
)