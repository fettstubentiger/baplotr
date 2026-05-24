set.seed(1)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
df <- data.frame(A, B)


test_that("'mean_bias' returns the expected mean bias", {
  expect_equal(mean_bias(df, methodA = "A", methodB = "B"), -14.8)
})

remove(A, B, df)