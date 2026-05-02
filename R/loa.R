loa <- function(methodA, methodB, loa) {
    mean_bias <- mean_bias(methodA, methodB)
    sd <- sd_diff(methodA, methodB)
    upper_loa <- mean_bias + 1.96 * sd
    lower_loa <- mean_bias - 1.96 * sd
    c(upper_loa, lower_loa)
}
