# clean up and reshape data so that analysis can be performed

## @knitr clean
library(reshape2)
# rejig for ggplotting

#rename columns
names(counts) <- c("cluster", "CT0","CT3","CT6","CT9","CT12","CT15","CT18","CT21")

counts_long <- melt(counts, id.vars="cluster", variable.name="time",value.name="readcount")

# rejig for playing with edgeR
gene_list <- counts[1]

# pairwise comparisons to CT0
CT3  <- counts[,2:3]
CT6  <- counts[,c(2,4)]
CT9  <- counts[,c(2,5)]
CT12 <- counts[,c(2,6)]
CT15 <- counts[,c(2,7)]
CT18 <- counts[,c(2,8)]
CT21 <- counts[,c(2,9)]