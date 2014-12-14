
library(ggplot2)

plot_gold <- function(data_file_path){
  dataset = read.csv(data_file_path)
  dates = as.Date(dataset$date)
  df = data.frame(dates, dataset$price)
  p <- ggplot(df, aes(x=dates, y=dataset.price)) + geom_line()
  
  p + theme(
    panel.grid.major = element_line(colour="grey"),
    panel.grid.minor = element_line(colour="red", linetype="dashed", size=0.2),
    panel.background = element_rect(fill="lightgrey"),
    panel.border = element_rect(colour="blue", fill=NA, size=1)
    )
  p + ggtitle("Gold Price Over Decades") +
    theme(
      axis.title.x = element_text(colour="brown", size=14),
      axis.text.x = element_text(colour="blue"),
      axis.title.y = element_text(colour="brown", size=14, angle = 90),
      axis.text.y = element_text(colour="blue"),
      plot.title = element_text(colour="brown", size=20, face="bold"))
    # dev.off()
}
