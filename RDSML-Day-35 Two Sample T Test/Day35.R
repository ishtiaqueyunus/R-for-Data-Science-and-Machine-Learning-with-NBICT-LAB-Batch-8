# Two Saple T Test/Independent Sample T Test
# Importing the dataset
dataset<-read.csv("scores.csv")

# Checking for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)
