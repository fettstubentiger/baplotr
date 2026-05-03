library(ggplot2)

plot_ba <- function(data, methodA, methodB, title, xlabel, ylabel) {
  
  averages <- rowMeans(cbind(methodA, methodB))
  differences <- methodA - methodB
   
  ggplot(
    data, aes(x = averages, y = differences)) + 
    geom_point(size = 0.4) +
    geom_hline(yintercept = 0) +
    geom_hline(aes(yintercept = mean_bias(methodA, methodB), linetype = "Mean Bias Error")) +
    geom_hline(aes(yintercept = loa(methodA, methodB)[1], linetype  = "Upper LoA"), colour = "red") +
    geom_hline(aes(yintercept = loa(methodA, methodB)[2], linetype = "Lower LoA"), colour = "red") +
    scale_linetype_manual(name = "Legend", values = c("Mean Bias Error" = "dotdash", "Upper LoA" = "dashed", "Lower LoA" = "dashed")) +
    labs(
      title = title,
      x = xlabel, 
      y = ylabel
    )
}
