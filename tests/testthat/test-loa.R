set.seed(123)
A <- sample(1:100, 10)
B <- sample(1:100, 10)

test_that("'loa' returns the expected output containing the upper and lower LoA", {
  expect_equal(loa(methodA = A, methodB = B), c(59.0990502333906, -98.8990502333906))
})


remove(A, B)