library(data.table)

terms <- structure(list(x = 1:10), .Names = "x", 
    row.names = c(NA, -10L), class = "data.frame")

key <- structure(list(x = c(1, 2, 4, 3, 5, 7, 6, 8, 9, 10), y = c("A", 
    "A", "A", "B", "B", "C", "D", "D", "D", "D")), .Names = c("x", 
    "y"), row.names = c(NA, -10L), class = "data.frame")


setDT(terms)
key <- data.table::data.table(key[c("x", "y")])

setkey(key, x)

out <- key[terms][[2]]

attributes(out) <- list(missing = TRUE)

out