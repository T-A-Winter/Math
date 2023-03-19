X <- c(65, 63, 67, 64, 68, 62, 70, 66, 68, 67, 69, 71)
Y <- c(68, 66, 68, 65, 69, 66, 68, 65, 71, 67, 68, 70)
sum(Y)
length(Y)
cov(X, Y)
var(X)
var(Y)
cor(X, Y)
cor.test(X, Y)
# Berechnung des p-values
2*(1-pt(3.1228, 10))

library(car)
library(lattice)

data(Prestige)
head(Prestige)
attach(Prestige)

# Basic Scatterplot with graphic-System
plot(income, prestige)
abline(lm(prestige ~ income))

# Scatterplot from Library Lattice
xyplot(prestige ~ income, type=c("p", "r"))

# Test des Regressionskoeffizienten
cor.test(prestige, income)
cor.test(prestige, income, method="spearman")

# Scatterplots produced with Library Car

scatterplot(prestige ~ income, data=Prestige)
scatterplot(prestige ~ income, data=Prestige, ellipse=TRUE)
scatterplot(prestige ~ income|type, data=Prestige, span=0.5, 
	legend.coords="topleft")

