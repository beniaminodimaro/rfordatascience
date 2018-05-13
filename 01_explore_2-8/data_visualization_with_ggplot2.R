install.packages("tidyverse")
library(tidyverse)

# creating a ggplot

ggplot(data= mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

