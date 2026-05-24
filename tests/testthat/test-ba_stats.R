set.seed(1)
A <- sample(1:100, 10)
B <- sample(1:100, 10)
df <- data.frame(A, B)

test_that("'ba_stats' returns the expected mean bias, standard deviation of differences, and both the upper and lower LoA", {
   
  output <- capture.output(ba_stats(df, methodA = "A", methodB = "B"))
  expect_equal(
    output,
    c("Mean Bias: -14.8", "Standard Deviation of Differences: 30.40029", "Upper LoA: 44.78457", "Lower LoA: -74.38457")
  )
  
})

remove(A, B, df)