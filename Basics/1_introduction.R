## Packages : https://cran.r-project.org/web/packages/

# install.packages('AER') # to install a package needed in the book

## You need to install the package once, but to load it everytime you wand to
## use it.

library('AER') # to load the package

                    ## 1.3 Working with R ####

objects() # it lists all objects in the global environment

objects('package:base') # will show the names of more than a thousand objects
                        # defined in base, including 'objects()' itself

x <- 2 # creating an object by assigning a value to a name
objects() # now we have one object in the global environment
remove(x) # removing a variable; also you can use the shorter version rm()
objects()

## Calling functions: A function call may use the arguments in any order, 
## provided the name of the argument is given. If names of arguments are not 
## given, R assumes they appear in the order of the function definition.

log(16, 2) # two arguments: x and base
log(x = 16, 2)
log(16, base = 2)
log(base = 2, x = 16)

class # to see the class of an object

## Geting help

?log
help('log')