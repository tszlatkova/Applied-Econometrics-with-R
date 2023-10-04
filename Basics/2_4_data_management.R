# data frame: data matrix/ data set; typically, it is an array consisting of a
# list of vectors and/or factors of identical length, thus yielding a
# rectangular format where columns correspond to variables and rows to 
# observations.

                         #### Creation from scratch ####

mydata <- data.frame(one = 1:10, two = 11:20, three = 21:30)

# Another way
mydata <- as.data.frame(matrix(1:30, ncol = 3))
names <- c('one', 'two', 'three')

# Although a data frame can be coerced from a matrix as above, it is internally
# represented as a list.

                          #### Subset selection ####

mydata$two # to select the second variable from the data
mydata[, 'two']
mydata[, 2]

# To simplify access to variables in a certain data set, it can be attache()ed.
# Technically, this means that the attached data set is added to the search()
# path and thus ariables contained in this data set can be found when their
# name is used in a command.

mean(two)

attach(mydata)
mean(two)
detach(mydata)

# To avoid attaching and detaching a data set for a single command only, the 
# function with() can be handy:

with(mydata, mean(two))

# Sometimes it is useful to work only with a subset from the data:

mydata_sub <- subset(mydata, two <= 16, select = -two) # takes all observations
# whose value of the second variable two does not exceed 16 and, in addition,
# all variables apart from two are selected

                         #### Import and export ####

# Export data frames in plain text format:

write.table(mydata, file = 'mydata.txt', col.names = TRUE) # create .txt file

newdata <- read.table('mydata.txt', header = TRUE)

# the column names are written in the first line of mydata.txt and hence we set
# header = TRUE when reading the file again

# It is also possible to save the data in the R internal binary format, by
# convention with extension .RData or .rda.

save(mydata, file = 'mydata.rda') # saves the data in R binary format

# In contrast to read.table(), this does not return a single object; instead it
# makes all objects stored in mydata.rda directly available within the current
# environment. The advantage of using .rda files is that several R objects, in
# fact several arbitrary R objects, can be stored, including functions or fitted
# models, without loss of information.

data('Journals', package = 'AER') # loads the Journals data frame from the 
# AER package

              #### Reading and writing foreign binary formats ####

# R can also read and write a number of proprietary binary formats, notably
# S-PLUS, SPSS, SAS, Stata, Minitab, Systat, and dBase files, using the functions
# provided in the package foreign (part of a standard R installation).

library('foreign')
write.dta(mydata, file = 'mydata.dta')
mydata <- read.dta('mydata.dta')

       #### Interaction with the file system and string manipulations ####

# Files available in a directory or folder can be queried via dir() and also
# copied (using file.copy()) or deleted (using file.remove()) independent of
# the operating system. For example, the Stata file created above can be deleted
# again from within R via

file.remove('mydata.dta')
file.remove('mydata.rda')
file.remove('mydata.txt')

                              #### Factors ####

# Categorical variables should be specified as factors. As an example,
# we first create a dummy-coded vector with a certain pattern and subsequently
# transform it into a factor using factor():

g <- rep(0:1, c(2, 4))
g <- factor(g, levels = 0:1, labels = c("male", "female"))
g

# The terminology is that a factor has a set of levels, say k levels. 
# Internally, a k-level factor consists of two items: a vector of integers
# between 1 and k and a character vector, of length k, containing strings with 
# the corresponding labels.

# Ordinal information may also be stored in a factor by setting the argument
# ordered = TRUE when calling factor().