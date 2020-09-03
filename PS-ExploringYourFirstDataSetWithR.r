#Starting with data exploration
#Exploring Your First Data set with R - Martin Burger
#other courses - Exploring Data Visually in R, Querying and Converting Data Types in R

# understand summarize, test, visualize data
#uses diamonds dataset of ggplot2
#Steps: Duplicate removal, missing value imputation, outlier detection, formatting, extraction
#Data science steps: Collection, pre-processing, exploration, modeling & analysis, visualization & reports
#Modeling & analysis: implementing models and diving deep into analysis
#This course is about exploration

#start with visualizations
#1st set of questions: data quality? summary statistics and visulizations
#2nd set of questions: nature of variables? distributions? sufficient data? should transformstions be used? 
#use hypothesis tests
#3rd set of questions: correlations? use correlation test and visulization



#John Tukey worked at bell labs
#Tablue has direct integration with R
#RStudio is a for profit company
#sticking with R base has advanteages

#diamonds data in gglopt, 53,940 rows, 10 columns, tibble data class data frame
#tools, summary stats, histogram, Q-Q plot, box and whisker plot, shapiro-wilk hypothesis test for normality
#five number summary, box plot

#get data set & view
library(ggplot2)
data(diamonds)

#View(diamonds)
#View Not yet supported in Jupyter R kerneal
#https://stackoverflow.com/questions/62249832/view-not-supported-in-the-jupyter-r-kernel
print(diamonds)
head(diamonds)
?diamonds

#help(diamonds)
#ggplot2(diamonds, aes(x=carat, y=price)) + geom_point()

#five number summary
#fivenum or summary, does not work on cateagorial
fivenum(diamonds$price)
summary(diamonds)

#get some distribution data
#categories = factors & levels
#cut has five levels and not evenly distributed
boxplot(diamonds$price)
#outliers beyon 1.5 times interquartile distance

boxplot(diamonds$carat)
#outliers beyon 1.5 times interquartile distance

#display overall structure of dataset of an R ojbect
#has object class data frame that has two secondary table classes
str(diamonds)

#find gaussian or normal distributions for continuous or discrete variables
#or hypothesis tests: Shapiro-Wilk and Anderson-Darling tests
#non-parametric models used when normal distribution is not assumed

#distributions are not normal, probalby use non-parametric models
hist(diamonds$price)
#maybe parato distribution?
qqnorm(diamonds$price)
hist(log(diamonds$price))
hist(diamonds$carat)

#hypothesis tests
#underlying and alternative hypothesis
#Null = normal distribution, if p-value is below 0.05 reject null
###shapiro-wilk required a vector
#first create a data frame, switches off table feature of data
diam = as.data.frame(diamonds)
set.seed(50)
mysample = sample.int(n=53940, size = 5000, replace = F)
#look at sample by mysample
#mysample
#7 is subset = column 7(price) of dataframe
shapiro.test(diam[mysample, 7])
#test the test
shapiro.test(rnorm(1000,50,5))
#column 1 is carat
shapiro.test(diam[mysample, 1])

#now look at relationships between variables, numberic and categorical
#box plot can help analyze categorical, ANOVA is based on normal distribution
##
#numeric-numeric, correlcation matrices, heat map, scatterplot
#categorical-categorical, contingency table, Chi-squared test
#categorical-numberic, ANOVA, Kruskal-Wallis test

#relationship between numerica & categorical
#can convert numberica to categorical if useful
#alternative to ANOVA for categorical data is Kruskal-Wallis One-way ANOVA or rank sum test
#Ho is distribution of the numeric variable is the same in each group
#compares medians, (Kruskal-Wallis can handle unbalanced groups)
#
#Categoric-numeric relation
boxplot(price ~ cut, data = diamonds)
kruskal.test(price ~ cut, data = diamonds)
anova(lm(price ~ cut, data = diamonds))


#correlations
#test the normality of the distribution before correlation analysis
#Pearson for normal or Spearman for strongly skewed
#Numeric relations
cor(diamonds$price, diamonds$carat, method = 'spearman')
cor(diamonds$price, diamonds$carat, method = 'pearson')

#correlation matrix
#Half table
#1 and 5 to 10 column id's
as.dist(cor(diamonds[,c(1,5:10)],method='spearman'))
#whole table
cor(diamonds[,c(1,5:10)],method='spearman')
plot(diamonds$price, diamonds$carat)



#use heat map to improve on correlation matrix 
library(GGally)
x=diamonds[,c(1,5:10)]
ggcorr(x, nbreaks = 20, mid = "white",
      high = "darkred", label = T,
      method = c("pairwise", "spearman"))

#relationships between categorical variables
#bar chart, Chi-squared hypothesis test with contingency table
#we have three categorical variables, cut, color, clarity
#start with contingency table
#clasic index operation so we use the box brackets to extract the columns
mydata = table(diamonds[,c(2:4)])
#column 2 is cut, column 3 is color, column 4 is clarity
mydata
#chi2 test is limited to categorical data
#Ho of chi2 test is no relation, ie the counts of one category do not affect the counts of the other category
chisq.test(diamonds$cut, diamonds$color)
chisq.test(diamonds$cut, diamonds$clarity)
# pvalue is tiny, so reject the Ho, there is a dependency
#ie the color of a diamond has some predictive power on the cut of the diamond, we don't know how much 


#you could put numberic variables into categories to make chi2 test, but you loose information

#comparing methods
#summary statistics, visualizations, hypothesis tests
#sub category of summary statistics - correlation coefficient, ratios
#three types of comparisons
#numberic-categorical, used Kruskal-Wallis, ANOVA
#Numeric-numeric, used correlations matrices & heat maps
#categorical-categorical, contingency table and chi-squared test

#machine learning approaches
#regression, decision tree, neural network, support vector machine
#visutalition tools, ggplot2, shiny
#other data sets, time series(longtudinal data), sentiment analysis of text
