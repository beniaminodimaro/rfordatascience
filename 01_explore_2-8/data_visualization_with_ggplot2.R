install.packages("tidyverse")
library(tidyverse)

# 3.2.2 creating a ggplot

ggplot(data= mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# 3.2.4 Exercises

# 1. Run ggplot(data = mpg). What do you see?

ggplot(data = mpg)

# An empty plot

# 2. How many rows are in mpg? How many columns?

dim(mpg)

# The mpg dataset have 234 rows and 11 columns

# 3. What does the drv variable describe? Read the help for ?mpg to find out.

help(mpg)

# the drv variable represent which type of wheel that is installed on the car

# 4. Make a scatterplot of hwy vs cyl.

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy))

# 5. What happens if you make a scatterplot of class vs drv? 
#    Why is the plot not useful?

ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = class))

# Is not useful because the two variables are categorical both

# 3.3 Aesthetic mappings

# 1. What’s gone wrong with this code? Why are the points not blue?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

# because when you put "color" inside aesthetic you want add a new variable 
# and set that variable to an aesthetic property
# if you want all points blue

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# Which variables in mpg are categorical? 
# Which variables are continuous? 
# (Hint: type ?mpg to read the documentation for the dataset). 
# How can you see this information when you run mpg?

# categorical variables: manifacturer, model, trans, drv, fl and class
# continuous variables: displ, year, cyl, cty, hwy

# to see this we can use 

str(mpg)

# or

sapply(mpg, class)

# 3. Map a continuous variable to color, size, and shape. 
# How do these aesthetics behave differently for
# categorical vs. continuous variables?

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, color = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, size = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, shape = hwy))
