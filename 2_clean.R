# clean up and reshape data so that analysis can be performed

## @knitr clean
library(reshape2)
# rejig for ggplotting

#rename columns
names(counts) <- c("cluster", "CT0","CT3","CT6","CT9","CT12","CT15","CT18","CT21")

counts_long <- melt(counts, id.vars="cluster", variable.name="time",value.name="readcount")