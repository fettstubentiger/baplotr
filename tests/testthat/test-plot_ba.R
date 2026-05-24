set.seed(1)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
df <- data.frame(A, B)

test_that("'plot_ba' returns a gg object", {
  p <- plot_ba(df, "A", "B", title = "Title", xlabel = "X", ylabel = "Y")
  expect_true(ggplot2::is_ggplot(p))
})

remove(A, B, df)