loa <- function(df, methodA, methodB) {
    mean_bias <- mean_bias(df, methodA, methodB)
    sd <- sd_diff(df, methodA, methodB)
    upper_loa <- mean_bias + 1.96 * sd
    lower_loa <- mean_bias - 1.96 * sd
    c(upper_loa, lower_loa)
}
