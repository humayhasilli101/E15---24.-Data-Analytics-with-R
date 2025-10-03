
# Let's start data analytics with R
##Start coding
#the main data types are:
## 1. Numeric – numbers, e.g., 5, 3.14
10001
5
##Math operations 
5 +5  ##Addition 
x ## error 

x = 5
x + 5

class(x)

y = 10
t = 11
rm(t)
x + y 

x * y 
x / y
x - y 
x -z 
x **2 ## square
sqrt(x) # take root
#Character – text or strings, e.g., "Hello"
#write it in quotation marks.

'Hello'
'Humay'

name =  'humay'
class(name)
toupper(name)

tolower(name)

age = 25

2.5
round(2.5)

# Logical -- boolean vaues

5 < 2

2 > 5
bool  = 2 > 5

## Data Structure

###data structures are ways to organize and store data. The main ones are:

##   Vector – a sequence of elements of the same type.

v <- c(3,5,6,3,9)
length(v)
sort(v)
sum(v)
mean(v)
sd(v)
var(v)
min(v)
max(v)


vstring <-  c('h','f',2) ## all in same type

v
class(v)
#List – a collection of elements that can be of different types.

l <- list(1, "text", TRUE)

list1  <-  list(1,3,4,'humay')

list1[3]

#lists keep vectors inside , can be indexed 

l2 <-  list(c(1,2,3,4,5) , "A" ,  5)
l2
class(list1)

### Dataframes - a 2-dimensional table where columns can be of different types (like a spreadsheet).

x <-  c(10,20,30,40)
y <-  c("a" , "c" , "D" ,"e")
z <-  c(11,22,31,22)

data.frame(x,y,z)

df <-  data.frame(x,y,z)
df

df$x
df$y
df$z

View(df)
summary(df)

#####Loading packages 

#install.packages("readr")
#install.packages("dplyr")
##install.packages(tidyr)

library(dplyr)
library(readr)
library(tidyr)
df <-  read.csv('tips.csv')

View(df)
summary(df)

## Select

df$sex <- factor(df$sex)
class(df$sex)

### Pipe , ctrl + shift + M 
df$sex %>%  unique()

unique(df$sex)
df %>%  filter(sex == 'male')

male_df <-  df %>%  filter(sex == 'Male')
View(male_df)

### Filtering
df %>%  filter(tip < 10) 
## rename
df %>%  rename(new_name = size)

#Save
df2 <-  df %>% rename(new_name = size )
df %>%  rename(new_name = size) %>%  filter(new_name == 2) %>%  filter(tip < 10)

## Save data
write.csv(df2, "df2.csv")



