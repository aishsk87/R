#Distribution of binding scores with gene expression and clip seq
file<-read.table("Motifresults_zscores.txt",sep="\t",header = TRUE)
motif<- (ggplot(file, aes(x=CLIPseq.zscore,y=cisbp.zscore)))
motif <- motif + geom_point() + geom_text(aes(label=gene)) + xlab("CLIP-Seq scores") + ylab ("Motif Scores")


clip <- (ggplot(file, aes(x=CLIPseq.zscore,y=Score)))
clip <- clip + geom_point() + geom_text(aes(label=gene),nudge_x = 0.25, nudge_y = 0.25, check_overlap = T) + xlab("CLIP-Seq scores") + ylab ("Scores")
clip
cisbp <- (ggplot(file, aes(x=cisbp.zscore,y=Score)))
cisbp <- cisbp + geom_point() + geom_text(aes(label=gene),nudge_x = 0.25, nudge_y = 0.25, check_overlap = T) + xlab("Motif scores") + ylab ("Scores")
cisbp
pdf(file = "Combined_plots.pdf", width = 7, height = 9)
print(grid.arrange(clip,cisbp))
dev.off()



library(ggplot)
library(ggrepel)
file<-read.table("Motifresults_zscores.txt",sep="\t",header = TRUE)
head(file)
motif<- (ggplot(file, aes(x=GE.zscore,y=cisbp.zscore,label=gene))+geom_point(size = 2))
motif <- motif + geom_point() + geom_label_repel(aes(label=gene),box.padding= 0.25,point.padding = 0.25,segment.color = 'grey50') + xlab("GE scores") + ylab ("Motif Scores") +  theme_classic()
pdf(file = "Motif_vs_GE_score.pdf", width = 7, height = 9)
print(motif)
dev.off()

file<-read.table("Motifresults_zscores.txt",sep="\t",header = TRUE)
head(file)
motif<- (ggplot(file, aes(x=GE.zscore,y=CLIPseq.zscore,label=gene))+geom_point(size = 2))
motif <- motif + geom_point() + geom_label_repel(aes(label=gene),box.padding= 0.25,point.padding = 0.25,segment.color = 'grey50') + xlab("GE scores") + ylab ("Clip-Seq Scores") +  theme_classic()
pdf(file = "Clip-Seq_vs_GE_score.pdf", width = 7, height = 9)
print(motif)
dev.off()


file<-read.table("Motifresults_zscores.txt",sep="\t",header = TRUE)
head(file)
motif<- (ggplot(file, aes(x=cisbp.zscore,y=CLIPseq.zscore,label=gene))+geom_point(size = 2))
motif <- motif + geom_point() + geom_label_repel(aes(label=gene),box.padding= 0.25,point.padding = 0.25,segment.color = 'grey50') + xlab("CisBP scores") + ylab ("Clip-Seq Scores") +  theme_classic()
pdf(file = "Clip-Seq_vs_Motitf_score.pdf", width = 7, height = 9)
print(motif)
dev.off()





motif <- ggplot(file, aes(y = cisbp.zscore, x = GE.zscore, label = rownames(gene))) +
  geom_point(color = "red") +
  ylim(1, 5.5) +
  theme(
    axis.line.x  = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.x  = element_blank(),
    axis.title.x = element_blank(),
    plot.title   = element_text(hjust = 0.5)
  )



