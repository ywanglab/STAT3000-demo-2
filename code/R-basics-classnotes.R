install.packages("dslabs")

a <- 2
ls()
rm(a)
ls()
search()

library(dplyr)
search()

d <- as.Date("2026-02-02")
typeof(d)  # "double"
class(d)
unclass(d) # a number (days since 1970-01-01)

library(dslabs)
typeof(murders)
View(murders)
dim(murders) # default 6 rows
head(murders, 10)

murders$pop_rank <- rank(murders$population)
head(murders)

murders$population
murders[, "population"]
murders[, 4] 
murders[["population"]] # extract the content of the column
murders[[4]]


murders[["population"]] # access the column content
murders['population']   # access the column as a data frame


class(murders[["population"]] )
class(murders["population"])

rate <- with(murders, total/population)
rate <- murders$total/murders$population

with(murders, {
  rate <- total/population
  rate <- round(rate*10^5)
  print(rate[1:5])
})

x <- c("s", "t", "a", "t",  " ", "3", "0", "0","0")

seq(1, 9, 3)  # why the output?

x <- c("b", "s", "t", " ", "2", "6", "0")
seq_along(x)


for (i in seq_along(x)) {
  cat(toupper(x[i])) #concatenate and print
  cat("---")
}

x=="W"

w = x[x=="W"]
print(w) # w=charactor(0): a char vector of length 0. 

seq_along(w) # an integer vector of legnth 0

