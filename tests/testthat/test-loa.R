set.seed(1)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
df <- data.frame(A, B)

test_that("'loa' returns the expected output containing the upper and lower LoA", {
  expect_equal(loa(df, methodA = "A", methodB = "B"), c(44.7845731, -74.3845731))
})


remove(A, B, df)