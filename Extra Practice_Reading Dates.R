A <- read.table("x.data", sep=",",
                col.names=c("date", "my1", "my2"))
A$date <- as.Date(A$date, format="%Y-%m-%d")
       # Say ?strptime to learn how to use "%" to specify
       # other date formats. Two examples --
       # "15/12/2002"  needs "%d/%m/%Y"
       # "03 Jun 1997" needs "%d %b %Y"

       # Actually, if you're using the ISO 8601 date format, i.e.
       # "%Y-%m-%d", that's the default setting and you don't need to
       # specify the format.

A$newcol <- A$my1 + A$my2               # Makes a new column in A
newvar <- A$my1 - A$my2                 # Makes a new R object "newvar"
A$my1 <- NULL                           # Delete the `my1' column
summary(A)                              # Makes summary statistics
