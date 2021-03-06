# perform analysis here generate graphs and tables and so on
library(ggplot2)
library(edgeR)

# ridiculous raw plotting time (looking at general trend not normalised or anything)
ridiculous <- ggplot(counts_long, aes(x=time, 
                  y=readcount, 
                  group=cluster))  + 
    geom_line()

ridiculous

# putting into edgeR-type format
diff_expr_CT3 <- DGEList(counts=CT3vCT0, genes=gene_list)
diff_expr_CT6 <- DGEList(counts=CT6vCT0, genes=gene_list)
diff_expr_CT9 <- DGEList(counts=CT9vCT0, genes=gene_list)
diff_expr_CT12 <- DGEList(counts=CT12vCT0, genes=gene_list)
diff_expr_CT15 <- DGEList(counts=CT15vCT0, genes=gene_list)
diff_expr_CT18 <- DGEList(counts=CT18vCT0, genes=gene_list)
diff_expr_CT21 <- DGEList(counts=CT21vCT0, genes=gene_list)