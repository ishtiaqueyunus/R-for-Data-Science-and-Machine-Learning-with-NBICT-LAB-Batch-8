# Paired Samples T-Test in R
# Importing the dataset
myDataset <- read.csv("paired-samples-t-test.csv")

# Calculating the difference
diffs <- myDataset$carb - myDataset$carb_protein

# Checking if the differences are normally distributed
shapiro.test(diffs)

# Checking for outliers using boxplot
boxplot(diffs)

# Running the Paired t-Test
t.test(x = myDataset$carb, y = myDataset$carb_protein, paired = TRUE)

# Running the Wilcoxon signed-rank Test
wilcox.test(x = myDataset$carb, y = myDataset$carb_protein, paired = TRUE)

# Calculating mean and sd
mean(myDataset$carb)
sd(myDataset$carb)
mean(myDataset$carb_protein)
sd(myDataset$carb_protein)

# Effect size calculation using Cohen's d (paired samples)
# 0.2 ~ small, 0.5 ~ medium, 0.8 ~ large

# install.packages("effsize")
library(effsize)
cohen.d(myDataset$carb_protein, myDataset$carb, paired = TRUE)
