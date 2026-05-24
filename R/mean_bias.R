mean_bias <- function(df, methodA, methodB) {
  mean(df[[methodA]] - df[[methodB]])
}
