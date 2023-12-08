## Name: Jeffery Zhang
## Class: INFO 201
## TA: Xinyu Chang (AD)
## Due: October 16th, 2023

##### ---------- PS2: Vectors, Indexing, Functions ----------

#### ---------- 1: Functions ----------

### ---------- 1.1: Basic Functions ----------

## 1.1.1
library("stringr")
greeting <- function(name, city) {
  greet <- paste("Hi, I am", name, "and I am from", city, "\n")
  cat(greet, "\n")
  return(greet)
}

## 1.1.2
cat(greeting("Jeffery", "Hallownest"), "\n")

## 1.1.3
mod_greeting <- function(name, city) {
  mod_greeting <- paste("Hi, I am", name, "and I am from Seattle\n")
  return(mod_greeting)
}
cat(mod_greeting("Jeffery"))
cat(mod_greeting("Jeffery", "Hallownest"))

### ---------- 1.2: Challenge ----------

## 1.2.1
RemoveDigits <- function(str) {
  no_digits <- gsub("[0-9]", "", str)
  return(no_digits)
}
no_digits <- RemoveDigits(c("INFO 201", "CSE 142", "mps-803c", "K2-team '21"))
cat(no_digits)

#### ---------- 2: Vectors and Vectorized Operations ----------

### ---------- 2.1: Create Vectors ----------

## 2.1.1
movies <- c("Spirited Away", "How to Train your Dragon", "Everything Everywhere all at Once",
            "Puss in Boots: the Last Wish", "Parasite", "No Country for Old Men")
cat(paste(paste0('"', movies, '"'), collapse = ", "))

## 2.1.2
top_3 <- movies[1 : 3]
cat(paste(paste0('"', top_3, '"'), collapse = ", "))

## 2.1.3
excited <- paste(top_3, "is a great movie!")
cat(paste(paste0('"', excited, '"'), collapse = ", "))

## 2.1.4
movies_no_4 <- movies[-4]
cat(paste(paste0('"', movies_no_4, '"'), collapse = ", "))

## 2.1.5
numbers <- 70 : 79
cat(numbers)

## 2.1.6
nums_len <- length(numbers)
cat(nums_len)

## 2.1.7
nums_mean <- mean(numbers)
cat(nums_mean)

## 2.1.8
less_nums <- 60 : 69
cat(less_nums)

## 2.1.9
all_nums <- c(less_nums, numbers)
cat(all_nums)

### ---------- 2.2: Indexing ----------

## 2.2.1
iLogical <- all_nums > 70
cat(iLogical)

# 2.2.2
over_70 <- all_nums[iLogical]
cat(over_70)

## 2.2.3
iLogical_sum <- sum(iLogical)
cat(iLogical_sum)
# Comment: Counts the # of "TRUE" values within the iLogical vector.

## 2.2.4
cat(length(all_nums[iLogical]))

## 2.2.5
under_70 <- all_nums[!iLogical]
cat(under_70)

## 2.2.6
cat(under_70 ^ 2, sep = " ")

## 2.2.7
nums_even <- all_nums %% 2 == 0
cat(nums_even)

## 2.2.8
all_nums_even_sub <- (all_nums[nums_even])
cat(all_nums_even_sub)

### ---------- 2.3: Modifying Vectors ----------

## 2.3.1
sequence <- seq(-5, 5)
cat(sequence)

## 2.3.2
sequence[sequence < 0] <- 0
cat(sequence)

## 2.3.3
relu <- function(vec) {
  vec[vec < 0] <- 0
  cat(vec, "\n")
  return(vec)
}

## 2.3.4
relu(c(-6, -15, 4, 5))
relu(c(-1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 1))

## 2.3.5
abs_val <- function(vec) {
  for (i in 1 : length(vec)) {
    if (vec[i] < 0) {
      vec[i] <- -vec[i]
    }
  }
  cat(vec, "\n")
  return(vec)
}
abs_val(c(-6, -15, 4, 5))
abs_val(c(-1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 1))

### ---------- 2.4: Challenge ----------

## 2.4.1
students <- c("Bao-yu", "Dai-yu", "Tan-chun", "Xi-chun")
incomes <- c(3e4, 6e4, 9e4, 1.2e5)
cat(students)
cat(incomes)

## 2.4.2
for (i in 1 : length(students)) {
  if (incomes[i] < 7.5e4) {
    cat(students[i], " ")
  }
}

## 2.4.3
for (i in 1 : length(students)) {
  if (incomes[i] < 7.5e4) {
    cat(students[i], ": ", 0.5 * (7.5e4 - incomes[i]), "\n")
  }
  else cat(students[i], ": 0\n")
}

#### ---------- 3: Lists ----------

### ---------- 3.1: Lists Practice ----------

## 3.1.1
country <- list(
  name = "Hallownest",
  capital = "City of Tears",
  population = 744,
  continent = "Some Backyard"
)
print(country)

## 3.1.2
country_names <- names(country)
cat(country_names)

## 3.1.3
capital <- country$capital
cat(capital)

## 3.1.4
population <- country[["population"]]
cat(population)

## 3.1.5
country[["area"]] <- "1 sq ft."
print(country)

