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
  group_by(species, island) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))

penguin_subset <- penguins %>% 
  ##filter is rows one, select is columns one
  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)

## Now, a for loops intro practice

animal <- c("cat", "dog", "dog", "cat", "zebra", "elephant")

for (i in seq_along(animal)) {
  if (animal[i] == "dog") {
    print("I love dogs!")
  } else {
    print("This is a different animal.")
  }
}


species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
age_human <- c(3, 8, 4, 12, 18)

animal_ages <- vector(mode = "numeric", length = length(species))

for (i in seq_along(species)) {
  if (species[i] = "dog") {
    animal_age <- age_human[i]*7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }

  animal_ages[i] <- animal_age  
}



mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
}

mean_mtcars 

## Same thing with apply()

apply(mtcars, 2, mean, na.rm = TRUE)

map_df(mtcars, mean)
