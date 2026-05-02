set.seed(123)
A <- sample(1:100, 10)
B <- sample(1:100, 10)

test_that("'sd_diff' returns the expected standard deviation of differences", {
  expect_equal(sd_diff(methodA = A, methodB = B), 40.3056379)
})

remove(A, B)
