sd_diff <- function(df, methodA, methodB) {
  sd(df[[methodA]] - df[[methodB]])
}
