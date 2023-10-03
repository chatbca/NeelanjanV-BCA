
time_intervals <- c("0-5", "5-10", "10-15", "15-20", "20-25")


students <- c(5, 25, 40, 17, 13)


data <- data.frame(Time = time_intervals, Students = students)


barplot(data$Students, names.arg = data$Time, col = "blue",
        main = "Histogram of Time Taken to Travel to School",
        xlab = "Time Intervals (minutes)", ylab = "Number of Students")

midpoints <- c(2.5, 7.5, 12.5, 17.5, 22.5)


plot(midpoints, students, type = "o", col = "red", pch = 19,
     main = "Frequency Polygon of Time Taken to Travel to School",
     xlab = "Time Intervals (minutes)", ylab = "Number of Students")

points(midpoints, students, col = "red", pch = 19)


lines(midpoints, students, col = "red")

