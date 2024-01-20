cat("\014")
my_list <- list("hello", 123, c(1, 2, 3), TRUE) 
first_element <- my_list[[1]] 
print(first_element) 
names(my_list) <- c("string", "number", "vector", "logical") 
my_list <- append(my_list, "new element", after = 2) 
print(my_list) 
my_list <- my_list[-3] 
print(my_list) 
first_element <- my_list[[1]] 
third_element <- my_list[[3]] 
print(first_element) 
print(third_element) 
my_list[[3]] <- c(4, 5, 6) 
print(my_list)
