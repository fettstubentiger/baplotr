set.seed(123)
A <- sample(1:100, 10)
B <- sample(1:100, 10)

test_that("'ba_stats' returns the expected mean bias, standard deviation of differences, and both the upper and lower LoA", {
   
  output <- capture.output(ba_stats(methodA = A, methodB = B))
  expect_equal(
    output,
    c("Mean Bias: -19.9", "Standard Deviation of Differences: 40.30564", "Upper LoA: 59.09905", "Lower LoA: -98.89905")
  )
  
})

