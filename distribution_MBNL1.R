#frequency plot to get the distribution for MBNL1

plot(breaks, cumfreq0,main="Binding Site distribution", xlab="scores",ylab="frequency")


freq <- read.table("Frequency_Cal.txt",header=F)
score <-freq$V4
range(score)
breaks = seq(0.6, 1.0, by=0.1)
score.cut = cut(score, breaks, right=FALSE)
score.freq=table(score.cut)
cumfreq0 = c(0, cumsum(score.freq))
plot(breaks, cumfreq0,main="Binding Site distribution", xlab="scores",ylab="frequency")
lines(breaks, cumfreq0)
pdf("neg_plot.pdf")
plot(breaks, cumfreq0,main="Binding Site distribution", xlab="scores",ylab="frequency")
lines(breaks, cumfreq0)
dev.off()
pdf
