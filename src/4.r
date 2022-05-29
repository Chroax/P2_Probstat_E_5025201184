# 4a
library(ggplot2)

oneWayData  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(oneWayData)
head(oneWayData)
attach(oneWayData)

oneWayData$Length <- as.factor(oneWayData$V2)
oneWayData$Group <- as.factor(oneWayData$V1)
oneWayData$Group = factor(oneWayData$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))
class(oneWayData$Group)

grup1 <- subset(oneWayData, Group == "Kucing Oren")
grup2 <- subset(oneWayData, Group == "Kucing Hitam")
grup3 <- subset(oneWayData, Group == "Kucing Putih")

ggplot(
  data = grup1, 
  aes(sample = Length)
  ) + geom_qq()
  
ggplot(
  data = grup2, 
  aes(sample = Length)
  ) + geom_qq()
  
ggplot(
  data = grup3, 
  aes(sample = Length)
  ) + geom_qq()

# 4b
bartlett.test(oneWayData$Group, oneWayData$Length)

# 4c
qqnorm(grup1$Length)
qqline(grup1$Length)

# 4e
model <- lm(Length~Group, data = oneWayData)
anova(model)
TukeyHSD(aov(model))

# 4f
ggplot(
  oneWayData, 
  aes(x = Group, y = Length)) + geom_boxplot(colour = "black") + scale_x_discrete() + xlab("Species") + ylab("Length")