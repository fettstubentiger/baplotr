ba_stats <- function(methodA, methodB) {
  mean_bias <- mean_bias(methodA, methodB)
  sd_diff <- sd_diff(methodA, methodB)
  loa <- loa(methodA, methodB)
  cat("Mean Bias: ", mean_bias, "\n",
      "Standard Deviation of Differences: ", sd_diff, "\n",
      "Upper LoA: ", loa[1], "\n",
      "Lower LoA: ", loa[2], sep = ""
  )
}
