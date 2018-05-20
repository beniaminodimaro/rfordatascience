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

# in the use of continuous variables, color shows a color scale from light to dark
# and size use different ordered sized forms, but ordered shapes doesn't make sense.

# 4. What happens if you map the same variable to multiple aesthetics?

# You can do this, but it is redundant.

# 5. What does the stroke aesthetic do? What shapes does it work with?
# (Hint: use ?geom_point)

?geom_point()

# Stroke changes the color of the border for shapes (22-24).

# What happens if you map an aesthetic to something other than a variable name,
# like aes(colour = displ < 5)?

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, color = displ > 5 ))

# Aesthetics can also be mapped to expressions (code like displ < 5). 
# It will create a temporary variable which takes values from the result
# of the expression.

# 3.5 Facets

# 3.5.1 Exercises

# 1. What happens if you facet on a continuous variable?

# R will create a split for every value of the continuous variable (transforming
# in fact continuous variables into factors)!!

# 2. What do the empty cells in plot with facet_grid(drv ~ cyl) mean?
# How do they relate to this plot?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl)) 

# When some values combination are not present, facet_grid leave an empty cell.

# 3. What plots does the following code make? What does . do?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# In those cases we want facet just in the rows or colums.

# 4. Take the first faceted plot in this section:

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

# in the use of continuous variables, color shows a color scale from light to dark
# and size use different ordered sized forms, but ordered shapes doesn't make sense.

# 4. What happens if you map the same variable to multiple aesthetics?

# You can do this, but it is redundant.

# 5. What does the stroke aesthetic do? What shapes does it work with?
# (Hint: use ?geom_point)

?geom_point()

# Stroke changes the color of the border for shapes (22-24).

# What happens if you map an aesthetic to something other than a variable name,
# like aes(colour = displ < 5)?

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, color = displ > 5 ))

# Aesthetics can also be mapped to expressions (code like displ < 5). 
# It will create a temporary variable which takes values from the result
# of the expression.

# 3.5 Facets

# 3.5.1 Exercises

# 1. What happens if you facet on a continuous variable?

# R will create a split for every value of the continuous variable (transforming
# in fact continuous variables into factors)!!

# 2. What do the empty cells in plot with facet_grid(drv ~ cyl) mean?
# How do they relate to this plot?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl)) 

# When some values combination are not present, facet_grid leave an empty cell.

# 3. What plots does the following code make? What does . do?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# In those cases we want facet just in the rows or colums.

# 4. Take the first faceted plot in this section:

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

# What are the advantages to using faceting instead of the colour aesthetic?
# What are the disadvantages? How might the balance change if you had
# a larger dataset?

# the advantage can be that you can avoid overlapping when
# we use color aesthetic, but you can't see the plot as a whole.

# 5. Read ?facet_wrap. What does nrow do? What does ncol do? 
# What other options control the layout of the individual panels?
# Why doesn’t facet_grid() have nrow and ncol argument?

?facet_wrap()

# What are the advantages to using faceting instead of the colour aesthetic?
# What are the disadvantages? How might the balance change if you had
# a larger dataset?

# the advantage can be that you can avoid overlapping when
# we use color aesthetic, but you can't see the plot as a whole.

# 5. Read ?facet_wrap. What does nrow do? What does ncol do? 
# What other options control the layout of the individual panels?
# Why doesn’t facet_grid() have nrow and ncol argument?

?facet_wrap()

# you can choose the number of rows or columns in which the plot has to be divided.
# These arguments are unnecessary for facet_grid since the number of rows and columns
# are determined by the number of unique values of the variables specified.

# 6. When using facet_grid() you should usually put the variable with
# more unique levels in the columns. Why?

# Reply still open

# 3.6 Geometric objects

# 3.6.1 Exercises

# 1. What geom would you use to draw a line chart? A boxplot?
# A histogram? An area chart?

# line chart: geom_line
# boxplot: geom_boxplot
# histogram: geom_hist
# area chart: geom_area

# 2. Run this code in your head and predict what the output will look like.
# Then, run the code in R and check your predictions.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

# This will produce a scatter plot with displ on the x-axis, hwy on the y-axis.
# The points will be colored by drv. There will be a smooth line,
# without standard errors, fit through each drv group.

# 3. What does show.legend = FALSE do? What happens if you remove it?
# Why do you think I used it earlier in the chapter?

# the legend is suppressed because there are three plots, and adding a legend
#that only appears in the last one would make the presentation asymmetric.
# Additionally, the purpose of this plot is to illustrate the difference 
# between not grouping, using a group aesthetic, 
# and using a color aesthetic (with implicit grouping). In that example,
# the legend isn’t necessary since looking up the values associated
# with each color isn’t necessary to make that point.

# 4. What does the se argument to geom_smooth() do?

# It adds standard error bands to the lines.

# 5. Will these two graphs look different? Why/why not?

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# the results are the same. In the first case we remove duplication in code,
# using the global mapping

# 6. Recreate the R code necessary to generate the following graphs.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(mapping = aes(group = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes (group = drv),se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv),se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv))

