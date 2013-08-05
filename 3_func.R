# functions required to analyse data (anything repetitive goes here)
# consider making a second 1.5_func.R for repetitive tasks in 2_clean.R

## @knitr func

BaseLineGraph <- function(data.set) {
    ggplot(data.set, aes(x=time, 
                         y=mean_expression, 
                         color = gene, 
                         group=Probeset.ID))  + 
        geom_line() + 
        theme_bw() + 
        theme(axis.title.x=element_blank(), 
              plot.title=element_text(face = "bold"))
}