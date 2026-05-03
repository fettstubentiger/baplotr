library(ggplot2)

set.seed(123)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
C <- data.frame(A = A, B = B)

test_that("'plot_ba' returns a gg object", {
  p <- plot_ba(C, A, B, title = "Title", xlabel = "X", ylabel = "Y")
  expect_true(is_ggplot(p))
})

remove(A, B, C)