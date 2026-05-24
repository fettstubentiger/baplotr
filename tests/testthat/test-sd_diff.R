set.seed(1)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
df <- data.frame(A, B)

test_that("'sd_diff' returns the expected standard deviation of differences", {
  expect_equal(sd_diff(df, methodA = "A", methodB = "B"), 30.4002924)
})

remove(A, B, df)