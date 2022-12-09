library(tidyverse)

set.seed(12345)

student_names <- read_table("students.txt") # It's a minor nuisance, but it makes it easy to reuse this code!
student_names <- sample_frac(student_names, 1) # shuffle the names

n_students <- nrow(student_names)
n_evals <- 5

students <- sapply(1:n_students, function(x) rep(x, n_evals)) %>% as.vector()
result <- tibble(student = students) %>%
  mutate(evaluator = 1 + ((student + 1:n_evals) %% n_students)) %>%
  mutate(student = student_names$student[student]) %>%
  mutate(evaluator = student_names$student[evaluator])
print(result)
write_csv(result, "evaluation_assignments.csv")
