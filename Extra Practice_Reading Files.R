A <- read.table("x.data", sep=",",
                col.names=c("year", "my1", "my2"))
nrow(A)                                 # Count the rows in A

summary(A$year)                         # The column "year" in data frame A
                                        # is accessed as A$year

A$newcol <- A$my1 + A$my2               # Makes a new column in A
newvar <- A$my1 - A$my2                 # Makes a new R object "newvar"
A$my1 <- NULL                           # Removes the column "my1"

# You might find these useful, to "look around" a dataset --
str(A)
summary(A)
library(Hmisc)          # This requires that you've installed the Hmisc package
contents(A)
describe(A)
