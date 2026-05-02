set.seed(123)
A <- sample(1:100, 10)
B <- sample(1:100, 10)


test_that("'mean_bias' returns the expected mean bias", {
  expect_equal(mean_bias(methodA = A, methodB = B), -19.9)
})

remove(A, B)