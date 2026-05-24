ba_stats <- function(df, methodA, methodB) {
  mean_bias <- mean_bias(df, methodA, methodB)
  sd_diff <- sd_diff(df, methodA, methodB)
  loa <- loa(df, methodA, methodB)
  cat("Mean Bias: ", mean_bias, "\n",
      "Standard Deviation of Differences: ", sd_diff, "\n",
      "Upper LoA: ", loa[1], "\n",
      "Lower LoA: ", loa[2], sep = ""
  )
}
