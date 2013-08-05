# perform analysis here generate graphs and tables and so on
library(ggplot2)

# ridiculous raw plotting time (looking at general trend)
ridiculous <- ggplot(counts_long, aes(x=time, 
                  y=readcount, 
                  group=cluster))  + 
    geom_line()

ridiculous