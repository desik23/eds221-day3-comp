# Practicing conditionals and loops ----
library(tidyverse)
# Refresh boolean operators
guava_juice <- 14
mango_juice <- 8

guava_juice == 14 
guava_juice > mango_juice

mango_juice != 8

# Create some basic if statments

if (guava_juice > mango_juice) {
  print ("Yup")
}

guava_nectar <-30

if (guava_nectar > guava_juice) {
  print ("TAXED")
}

# gray whale, blue whale, whale
sbc_observations <- c("blue whale", "gray whale", "whale", "gray wale", "dolphin", "sea lion", "blue whale")

str_detect(sbc_observations, pattern = "whale")

# An example of str_detect() within a conditional statement

phrase <- "I really love data science!"

if (str_detect(phrase, "data")) {print
  ("cool me too!")}

# If-else statements
pika <- 89

if (pika > 60) {
  print("large pika")
} else {
  print("small pika")
}

# Create a string ' food <- "I love enchiladas!"'
# Write an if-else statement that print "Yay burritos" if the string "burritos"

food <- "I love enchiladas"

if (str_detect(food, pattern = "burritos" )) {
  print("yay burritos!")
} else {
  print("What about burritos?")
}

marmot <- 2.8

if (marmot < 0.5) {
  print("small marmot")
} else if (marmot >= 0.5 & marmot < 3) {
  print("Medium marmot")
} else if (marmot >= 3) {
  print("large marmot")
}

species <- "lion"

switch(species, 
       "cat" = print("meow"),
       "lion" = print("roar"),
       "owl" = print("screech"),
       "fox" = print("obnoxious"),
       print("something else"))

tigers <- c(29, 34, 82)
lions <-  c(2, 18, 6)

big_cats <- vector(mode = "numeric", length = length(tigers))

# Loops (Afternoon Session)
library(tidyverse)
library(palmerpenguins)

penguin_summary <- penguins %>%
  group_by(species) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))


