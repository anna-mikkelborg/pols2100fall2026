test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        testthat::expect_true(
                  grepl("industrial democracies is differences in political institutions", theory, fixed = TRUE),
                  info = "Not quite. Which sentence describes causal relationship Jackman is arguing for at the most general level?"
                )
      }
    )
  )
)