#Plural sight course, Abhisek Kumar instructor
print('hello world')

mean(1:20)

x <- 1:20
mean(x)

#test script sourcing, have to use forward slash
#source("C:\Users\jfras\OneDrive\DataScience\R\TestSourceScript.txt", echo=TRUE)
source("C:/Users/jfras/OneDrive/DataScience/R/TestSourceScript.txt", echo=TRUE)


#other editors
#notepad++
#for small projects
#emac, #Vim-R, #NPPToR, #Tinn-R
#large projects, use IDE
#Eclipse IDE(Java people like), #Architect IDE, #Revolution-R, #Life-R
#RStudio is another IDE

help(rnorm)

example(rnorm)

#demo commands
demo()
demo(package=.packages(all.available = TRUE))
demo(package = 'graphics') # lists demos in graphics package
demo(graphics)

demo(graphics)

#vignette help
vignette()
vignette(package .packages(all.available = TRUE))
VIGNETTE(package = 'parallel')
vignette('parallel', package = 'parallel')

#help using web search
#rsight search, uses http://search.r-project.org
RSitesearch("arithmetic mean")
RSitesearch("{arithmetic mean}") #excat search
install.packages(sos)
library(sos)
findFn("{arithmetic mean}")
findFn("{arithmetic mean}", maxPages=2)
#web search tips
#use [R] rather than R in searches

#community support
#mailing lists, R-help, R-devel, R-sig-finance, R-sig-hpc
#http://bit.ly/mailingR
#http://bit.ly/stackoverflowR
# for stats & data mining http://bit.ly/crossvalidatedR
# http://bit.ly/nabbleR
http://bit.ly/RPostingGuide

#blogs
http://bit.ly/Rbloggers
http://bit.ly/revolutionanalyticsR
http://bit.ly/rstatistics
http://bit.ly/rdatamining

#assignment operator is <-
#Google R style guide
#https://google.github.io/styleguide/Rguide.html

#short cut is alt -
x <- x
x
assign("x",10)
x

#environments
#to create a new environment
my.environment  <- new.env()
assign("x",10,my.environment)
#or my.environment[["x"]] <- 11
#get("x",my.environment)
assign("match.score",320,my.environment)
#or my.environment[["match.score"]] <- 320
#or my.environment$match.score <- 320
get("match.score",my.environment)

#operators like functions but sytax different
#arithmetic or logical
format(10^5, scientific=FALSE)

#special numbers
#infinity
1/0 #positive infinity
Inf+5
is.finite(1/0)
is.infinite(1/0)
#missing values
is.nan(Inf/Inf)
#na is not available

#logical operators
# ! Logical NOT
# | Logical OR
# & Locial AND
!(TRUE)
#
TRUE | FALSE
TRUE $ FALSE

#vectorized operations
#combine function, the c() function
student.marks <-c(10,20,30,40)
#types of vectorized opertions 3 types
#Vector-scalar
#Vector-vector
#multiple Vector - one vector

#vector to scalar operation
student.marks <-c(10,20,30,40)
student.marks
mean(student.marks)
#vector to vector operation
#many vector to one vector operation

#vector to vector operation
student.marks <- student.marks+5
student.marks
student.marks >=30

#many vector to one vector operation
student.physics.marks <-c(20,40,30,50)
student.chemistry.marks <-c(30,20,50,20)
student.total.marks <- student.physics.marks + student.chemistry.marks
student.total.marks

#DATA STRUCTURES
#Similar items: Atomic vector 1D, Matrix2D, ArrayND
#Dissimilar items: List1D, Data frame2D
#classes of ojbects:
#atomic classes: Character, Numeric, Integer, Logical, Complex

#atomic vectors (known as vectors) should be homogeneous
#use combine function
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
str(student.names) #get structure
is.character(student.names) #test character set
#numeric vector
student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
str(student.weights) #get structure
is.character(student.weights) #test character set
is.numeric(student.weights) #test numeric set
#Integer vector
#L suffix marks as integer type
student.physics <-c(70L, 75L, 80L, 85L) #integer
str(student.physics) #get structure
is.integer(student.physics) #test integer

#integer is numeric but numric is not necessarily integer

#create atomic vectors using vector()
#you get default values using this method
vector ("character", length = 4) #default: empty string
vector("numberic", length = 4) #default: 0

#operation on atomic vectors
#atomic classes: Character, Numeric, Integer, Logical, Complex
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
student.names[1] #gets column 1
student.names[1:3] #gets columns 1 to 3
student.names[c(T,F,T,F)] #gets columns 1 and 3
student.names[student.physics.marks>75] 

#coercions (type casting or type conversion)
#implicit will convert
student.weights <-c(60.5, 75.5, 45.2, "47.5") #numeric
str(student.weights)
#explit conversions, sensible
#as is a function
as.numeric(student.physics.marks >= 75) #numeric
as.character(student.physics.marks) #character

#FACTOR VECTORS
#used to store category values
student.genders <-c("Male","Male","Female","Female") #character vector, not efficient if you have t use later
student.genders
student.genders <-c(2L,2L,1L,1L) #integer vector
student.genders
student.genders <- factor(c("Male","Male","Female","Female")) #factor vector
#note results won't be wrapped in quotes, they are now categories/levels
#leves are decided alphabetically
student.genders
as.numeric(student.genders) #explicit
student.blood.groups <- factor(c("A","AB","O","AB"), levels = c("A","B","AB","O"))
str(student.blood.groups)


#LIST, heterogeneous, can contain items of different classes
#student.names[1] etc
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
student.genders <- factor(c("Male","Male","Female","Female")) #factor vector
student.physics.marks <-c(70L,75L,80L,85L)
student.chemistry.marks <-c(60L,70L,85L,70L)
#creating unnamed list for the first student, can contain different classes
student1 <- list(student.names[1], student.weights[1], student.genders[1],
                 student.physics.marks[1],student.chemistry.marks[1])
str(student1) #str is to display the structure
student1
#named list, handy for extracting later
student2 <- list(name = student.names[1],
                 weight = student.weights[1],
                 gender = student.genders[1],
                 phsics = student.physics.marks[1],
                 chemistry = student.chemistry.marks[1])
str(student2)





# a list can be part of another list
#named list, handy for extracting later
student3 <- list(name = student.names[1],
                 weight = student.weights[1],
                 gender = student.genders[1],
                 marks = c(student.physics.marks[1],student.chemistry.marks[1]))
str(student3)
student3

#operations on lists
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
student.genders <- factor(c("Male","Male","Female","Female")) #factor vector / category
student.physics.marks <-c(70L,75L,80L,85L)
student.chemistry.marks <-c(60L,70L,85L,70L)
#subsetting: Extract elements(s) using unnamed list
student4 <- list(student.names[1],student.weights[1], student.genders[1],
                student.physics.marks[1], student.chemistry.marks[1])
student4[1] #single brackets [] return element of same type
typeof(student4[1])
student4[[1]] #double brackets[[]] return the object in its own type
typeof(student3[[1]]) #character vector of length 1
student4[1:3] #access multiple elements using index
#downside is you have to remeber the place number in the list to use

#named lists
#downside of unnamed lists is you have to remeber the place number in the list to use
#named lists solve that issue
student3 <- list(name = student.names[1],
                 weight = student.weights[1],
                 gender = student.genders[1],
                 marks = c(student.physics.marks[1],student.chemistry.marks[1]))
str(student3)
student3
student3[["name"]]
#or
student3$gender
#or
student3[c("marks")]

#data frames, matrix, array

#DATA FRAME
#2 dimensional
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
student.genders <- factor(c("Male","Male","Female","Female")) #factor vector
student.physics.marks <-c(70L,75L,80L,85L) #integer
student.chemistry.marks <-c(60L,70L,85L,70L)
# making lists gives us ability to extract details for one student but not all at once
students5 <- list(student.names[1],
                 student.weights[1],
                 student.genders[1],
                 student.physics.marks[1],
                 student.chemistry.marks[1])
#
students6 <- data.frame(student.names,
                 student.weights,
                 student.genders,
                 student.physics.marks,
                 student.chemistry.marks)
#a dataframe is a type of list
typeof(students6)
students6
str(students6)
#note character strings are treated as factors so


#note character strings are treated as factors(default behavior) so
students7 <- data.frame(student.names,
                 student.weights,
                 student.genders,
                 student.physics.marks,
                 student.chemistry.marks,
                        stringsAsFactors = FALSE)
str(students7)
#now note student.names is a character now

#common operations on data frames
student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
student.genders <- factor(c("Male","Male","Female","Female")) #factor vector
student.physics.marks <-c(70L,75L,80L,85L) #integer
student.chemistry.marks <-c(60L,70L,85L,70L)
students8 <- data.frame(student.names,
                 student.weights,
                 student.genders,
                 student.physics.marks,
                 student.chemistry.marks,
                       stringsAsFactors = FALSE)
str(students8)
#subsetting examples
#use single brackets will return object of same type
students8[1] #single brackets [] return element of same type
typeof(students8[1])
print("#single brackets [] return element of same type")

students8[[1]] #doulbe brackets [[]] return the object in its own type
typeof(students8[[1]])
print("#doulbe brackets [[]] return the object in its own type")

students8[["student.names"]] #doulbe brackets [[]] return the object in its own type
typeof(students8[[1]])
print("#doulbe brackets [[]] return the object in its own type")

students8$student.names #$ return the object in its own type
typeof(students8$student.names)
print("# $ return the object in its own type")

students8[1:3]
students8[c("student.physics.marks","student.chemistry.marks")]
students8
students8[1,2] #row number, column number
students8[1:3,1:2]
students8[c(1,2),c(1,3)]
students8[,1]
students8[1,]
students8[c(T,F,T,F),]

# MATRIX

# matrices also two dimentional, but they are homogeneous
#student.names <-c("Raj", "Rahul","Priya", "Poonam") #character
#student.weights <-c(60.5, 75.5, 45.2, 47.5) #numeric
#student.genders <- factor(c("Male","Male","Female","Female")) #factor vector
student.physics.marks <-c(70L,75L,80L,85L) #integer
student.chemistry.marks <-c(60L,70L,85L,70L)
student.marks <- rbind(student.physics.marks, student.chemistry.marks)
student.marks
student.marks <- cbind(student.physics.marks, student.chemistry.marks)
student.marks
rownames(student.marks) <- c("Raj","Rahul","Priya","Poonam")
student.marks
str(student.marks)
student.marks <-matrix(c(70L,75L,80L,85L,60L,70L,85L,70L),ncol=2,nrow=4)
student.marks
student.marks <-matrix(c(70L,75L,80L,85L,60L,70L,85L,70L),ncol=4,
                       nrow=2,byrow=TRUE)
student.marks



#ARRAY
#also homogeneous, but can be n-dimentional

class1.student.physics.marks <-c(70L,75L,80L,85L) #integer
class1.student.chemistry.marks <-c(60L,70L,85L,70L)
class1.student.marks <- cbind(class1.student.physics.marks, class1.student.chemistry.marks)
class1.student.marks
class2.student.physics.marks <-c(71L,76L,82L,86L) #integer
class2.student.chemistry.marks <-c(61L,71L,86L,71L)
class2.student.marks <- cbind(class2.student.physics.marks, class2.student.chemistry.marks)
class2.student.marks

student.marks <- array(c(class1.student.marks,class2.student.marks),dim=c(4,2,2))
student.marks

# R FUNCTIONS

student.physics.quiz.marks <-c(70L,75L,80L,85L) #integer
student.physics.viva.marks <-c(7L,5L,8L,6L)
students10.physics.total.marks <- student.physics.quiz.marks + student.physics.viva.marks
students10.physics.total.marks

#create a function called get total marks
#has two values as arguments
GetTotalMarks <- function(quiz.marks, viva.marks) {
    total.marks <- quiz.marks + viva.marks
    total.marks
}

#create two integer vectgors
student.physics.quiz.marks <-c(70L,75L,80L,85L) #integer
student.physics.viva.marks <-c(7L,5L,8L,6L)
#pass two integer vectors as arguments
#first value passed in GetTotalMarks will be assigned to
#first argument of GetTotalMarks function and so on
#here we are calling function and passing values to arguments
#also called function invokation or function call
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks,
                                             student.physics.viva.marks)
student.physics.total.marks
#use function now for chemistry scores
student.chemistry.quiz.marks <-c(60L,70L,85L,70L) #integer
student.chemistry.viva.marks <-c(8L,4L,7L,9L)
student.chemistry.total.marks <- GetTotalMarks(student.chemistry.quiz.marks,
                                             student.chemistry.viva.marks)
student.chemistry.total.marks


#parts
#function name
#Function keyword = function
#arguments to functions
#body of function
#function naming guidlines, Google R style guide
#Argument matching/mapping, passing arguments techniques
#1 by position
#2 by name, then order won't matter
GetTotalMarks(quiz.marks = c(70L,75L,80L,85L),
              viva.marks = c(7L,5L,8L,6L))




#argument with default values, assignment.marks is assigned a default value
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L) {
    total.marks <- quiz.marks + viva.marks + assignment.marks
    total.marks
}
#you can also override defaults
GetTotalMarks(quiz.marks = c(70L,75L,80L,85L),
              viva.marks = c(7L,5L,8L,6L),
             assignment.marks = c(2L, 1L, 3L, 4L))

#what if we don't know number of arguments
#use Ellipsis ..., means "anything else"
#... can be used as an argument
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L,...) {
    total.marks <- quiz.marks + viva.marks + assignment.marks +sum(...)
    #extra.arguments <- list(...)
    #print(extra.argument)
    total.marks
}
#creativity and attendance will be mapped to ... argument
GetTotalMarks(quiz.marks = c(70L,75L,80L,85L),
              viva.marks = c(7L,5L,8L,6L),
             assignment.marks = c(2L, 1L, 3L, 4L),
             creativity.marks = 2,
             attendance.marks = 3)


# R supports Lazy Evaluation

#Returning multiple values

#functions as objects
#functions are first class objects in R

#anonymous function for writing functions
#do.call is a method

#If
#If Else
#Multiple If-else
#Switch

#vectorized if

test.marks <-c(70L,75L,80L, NA) #integer
test.marks >=75
ifelse(test.marks >=75,
       c("Great","Bravo","Excellent","Congrats"),
       c("keep it up","Not Bad","Just missed","Just ok"))
ifelse(test.marks >=75,"With distinction","Without distinction")


#repeat with break
#repeat with next
#while loop, conditions are checked before entering the loop
#for loop, can be used to loop thru a vector

#APPLY
#apply family of functions
#used alot in data analysis
#works on margins or an array or matrix
#matrix two dimensions, arrays are n dimensions
#apply(data, margin, function)
#data = array or matrix
#margin = 1:2 rows and columns
#function = 

student.marks <-matrix(c(70L,75L,72L,80L,50L,
                 80L,85L,60L,72L,88L,
                 60L,70L,87L,55L,90L,
                 85L,70L,74L,86L,78L),ncol=5, nrow=4, byrow=TRUE)
rownames(student.marks) <- c("Raj","Rahul","Priya","Poonam")
colnames(student.marks) <- c("Physics","Chemistry","Mathematics","Biology","History")
student.marks
#to get results for one student we could do for loops in 7 lines
# but we can do in one line
apply(student.marks,1,sum) #1 means we want to work on rows
apply(student.marks,1,max) #1 means we want to work on rows
apply(student.marks,1,which.max) #1 means we want to work on rows
colnames(student.marks)[apply(student.marks,1,which.max)] #1 means we want to work on rows
apply(student.marks,2,mean) #2 means we want to work on columns
apply(student.marks,2,max) #2 means we want to work on columns
rownames(student.marks)[apply(student.marks,2,which.max)] #2 means we want to work on columns
apply(student.marks,1:2,function(x) x+2)

#other functions in apply family
#lapply, rapply
#sapply, or mapply
#vapply

#R-PACKAGES

library()
search()
#repositories
#CRAN - Comprehensive R Archive Network
#BioCunductor
#Omegahat
#R-Forge
#rforge.net
#github

#library loads into memory
library(devtools)

#install_github("slidify", "ramnathv")
library(git2r)
install.packages("slidify")

setRepositories()

#R-IMPORTING DATA

#working directory
#defalut location
#make sure you are working in the desired directory
getwd()
#setwd(path)
#setwd(file.path("F:","PS","R","Mod9")) or double forward\\ slashes or single backslash/

#.csv files
#read.csv(filename, header = TRUE, sep=",")
#to getinto dataframe
#my.data <-read.csv()
my.data <-read.csv("C:/Users/jfras/RTraining/RProgFund/9-r-programming-fund-m9-exercise-files/data/01Sample.csv")
str(my.data)
my.data

#read.table, can be used to read tabular data
#will use a data frame, default separater is white space: space, tabs, new lines, or character returns
#read.table(file, header = False, sep="", dec=".")
my.data <-read.table("C:/Users/jfras/RTraining/RProgFund/9-r-programming-fund-m9-exercise-files/data/02Sample.txt", 
                     header=TRUE,
                     skip=1,
                     colClasses=c("character","factor","numeric","integer","integer"))
str(my.data)
my.data

#import from url
#R-has in-built web server
#download.file method = download.file(url,localfile)
url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
#setwd(file.path("F:","PS","R","Mod9"))
#local <- file.path("data","03DownloadedFile.data")
#download.file(url,local)
local <- "C:/Users/jfras/RTraining/RProgFund/Data/02Sample2.txt"
download.file(url,local)
my.data <- read.table(local,sep=",")
str(my.data)
#Use RCurl package for advanced scenarios 

#use RCurl for more advanced scenarios

#installed.packages()

.libPaths()

install.packages("r-readxl")
install.packages("r-writexl")
install.packages("r-openxlsx")

sessionInfo()
R.version

#install.packages('IRkernel')
#IRkernel::installspec(user=FALSE)
sessionInfo()
R.home()



version

library()

#Set working directory
setwd(file.path("C:/Users/jfras/RTraining/RProgFund")) 
#Set file path
file <- file.path("Data","05Sample.xlsx")
#install.packages("XLConnect")
library(readxl)
#my.data <- read_xlsx(file,sheet=1,startRow=2)
my.data <- read_xlsx(file,sheet=1,skip=1)
#my.data <- readxl("C:/Users/jfras/RTraining/RProgFund/Data/05Sample.xlsx", sheet=1, startRow=2)
str(my.data)
my.data <- transform(my.data, 
                     student.gender = as.factor(student.gender),
                     student.physics.marks = as.integer(student.physics.marks),
                     student.chemistry.marks = as.integer(student.chemistry.marks))                     
str(my.data)
#Other packages : xlsReadWrite, xlsx , gdata 

version



#reading proprietary formats
library(foreign)
#> my.data <‐ read.spps(file) #SPSS data file
#> my.data <‐ read.dta(file) #Stata binary file
#> my.data <‐ read.mtp(file) #Minitab portable worksheet
#> my.data <‐ read.xport(file) #SAS XPORT format library
#>help(package="foreign")

#test datasets
library(datasets)
data(package="datasets")
data(iris)
str(iris)

#importing from databases & packages to help
#RODBC - microsoft odbc etc
#DBI - 
#example odbc using RODBC
#from mySQL database
library(RODBC)
connect <- odbcConnect("mysqlconnection")
#my.data <- sqlQuery(connect, "SELECT * FROM test.classroom")
#my.data


#analyzing data Module 10
library(datasets)
data(iris)
str(iris)
head(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
range(iris$Sepal.Length)
diff(range(iris$Sepal.Length))
summary(iris$Sepal.Length)
summary(iris)

#visual
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length, horizontal = TRUE)
boxplot.stats(iris$Sepal.Length)
boxplot(iris[1:4])

#histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Length,
    main="Histogram of Sepal Length",
    xlab="Sepal Length")

#variance and standard deviation
var(iris$Sepal.Length)
sd(iris$Sepal.Length)

#frequecy distribution for categorical variables
table(iris$Species)
barplot(table(iris$Species))
prop.table(table(iris$Species))
prop.table(table(iris$Species))*100

#category statistics
data(iris)
#install.packages("r-psych")
library(psych)
describeBy(iris,group=iris$Species)
library(lattice)
histogram(~Sepal.Length|Species,data=iris,layout=c(1,3),col="black")
boxplot(Sepal.Length~Species,
       data=iris)


