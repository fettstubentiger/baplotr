plot_ba <- function(df, methodA, methodB, title, xlabel, ylabel) {
  
  df <- df |> dplyr::mutate(
    "tmpAvg" = rowMeans(cbind(.data[[methodA]], .data[[methodB]])),
    "tmpDiff" = .data[[methodA]] - .data[[methodB]]
  )
   
  ggplot2::ggplot(
    df, ggplot2::aes(x = tmpAvg, y = tmpDiff)) + 
    ggplot2::geom_point(size = 0.4) +
    ggplot2::geom_hline(yintercept = 0) +
    ggplot2::geom_hline(ggplot2::aes(yintercept = mean_bias(df, methodA, methodB), linetype = "Mean Bias Error")) +
    ggplot2::geom_hline(ggplot2::aes(yintercept = loa(df, methodA, methodB)[1], linetype  = "Upper LoA"), colour = "red") +
    ggplot2::geom_hline(ggplot2::aes(yintercept = loa(df, methodA, methodB)[2], linetype = "Lower LoA"), colour = "red") +
    ggplot2::scale_linetype_manual(name = "Legend", values = c("Mean Bias Error" = "dotdash", "Upper LoA" = "dashed", "Lower LoA" = "dashed")) +
    ggplot2::labs(
      title = title,
      x = xlabel, 
      y = ylabel
    )
}