plot_ba <- function(df, methodA, methodB, title, xlabel, ylabel) {
  
  df <- df |> mutate(
    "tmpAvg" = rowMeans(cbind(.data[[methodA]], .data[[methodB]])),
    "tmpDiff" = .data[[methodA]] - .data[[methodB]]
  )
   
  ggplot(
    df, aes(x = tmpAvg, y = tmpDiff)) + 
    geom_point(size = 0.4) +
    geom_hline(yintercept = 0) +
    geom_hline(aes(yintercept = mean_bias(df, methodA, methodB), linetype = "Mean Bias Error")) +
    geom_hline(aes(yintercept = loa(df, methodA, methodB)[1], linetype  = "Upper LoA"), colour = "red") +
    geom_hline(aes(yintercept = loa(df, methodA, methodB)[2], linetype = "Lower LoA"), colour = "red") +
    scale_linetype_manual(name = "Legend", values = c("Mean Bias Error" = "dotdash", "Upper LoA" = "dashed", "Lower LoA" = "dashed")) +
    labs(
      title = title,
      x = xlabel, 
      y = ylabel
    )
}