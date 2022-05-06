
#plot Venn diagram for intersections of positions for .bed files
install.packages("nVennR")
library(nVennR)
myV <- plotVenn(one,two,three)
myV <- plotVenn(one,two,three)
myV <- plotVenn(list(one,two,three))
myV <- plotVenn(one,two,three)
myV <- plotVenn(list(First=one,Second=two,Third=three))
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000)
head(one)
file3<-read.table("R636S_Het_exclusion_intersection.txt_positions_positions.bed_Homo_genes_3")
head(file3)
three=file3$V1
file2<-read.table("R636S_Het_exclusion_intersection.txt_positions_positions.bed_Homo_genes_2")
file2<-read.table("R636S_Het_exclusion_intersection.txt_block_Homo_genes_2")
two=file2$V1
file1<-read.table("R636S_Het_exclusion_intersection.txt_gene_positions_Homo_Clip_gene_1")
one=file1$V1
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000)
myV
myV <- plotVenn(nVennObj = myV)
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000,outFile="VennDiag_AltSplice.png")
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000,outFile="VennDiag_AltSplice")
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000,outFile="VennDiag_AltSplice.svg")
myV <- plotVenn(nVennObj = myV,outFile="VennDiag_AltSplice.svg")
myV <- plotVenn(nVennObj = myV,outFile="VennDiag_AltSplice.png")
install.packages("rsvg")
install.packages("grImport2")
myV <- plotVenn(nVennObj = myV,outFile="VennDiag_AltSplice.svg")
myV <- plotVenn(nVennObj = myV,outFile="VennDiag_AltSplice.png")
file1<-read.table("R636S_Het_exclusion_intersection.txt_gene_positions_Homo_Clip_gene_1")
one=file1$V1
file2<-read.table("R636S_Het_exclusion_intersection.txt_block_Homo_genes_2")
two=file2$V1
file3<-read.table("R636S_Het_exclusion_intersection.txt_positions_positions.bed_Homo_genes_3")
three=file3$V1
myV <- plotVenn(list(First=one,Second=two,Third=three), nCycles = 2000,outFile="VennDiag_AltSplice.svg")
getVennRegion(myV, c("First","Second","Third"))
listVennRegions(myV)
summary(myV)
lapply(list_venn, function(x) write.table( data.frame(x), 'R636S_Het_exclusion.csv'  , append= T, sep=',' ))
savehistory("~/RBM20/Assemblies_for_Paper/Alt_Splice_intersection/Paper_Representation/Venn_Diagram/Code_for_venn.Rhistory")
