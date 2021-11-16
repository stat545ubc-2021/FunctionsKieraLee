test_that("Summary Statistics Outputs a tibble", {
  #creating a simple data frame to test this on
  fruit <- data.frame(fruit_type = c("apple","apple","apple", "orange", "orange","orange","plum","plum","plum"),
                      number = c(10,7,45,3,45,67,89,0,12))
  #testing that the output is a tibble
  expect_is(summary_statistics(fruit, number, fruit_type), "tbl")})

test_that("Summary Statistics can deal with wrong objects", {
  fruit <- data.frame(fruit_type = c("apple","apple","apple", "orange", "orange","orange","plum","plum","plum"),
                      number = c(10,7,45,3,45,67,89,0,12))
  #testing that switching x and y will produce the correct error
  expect_error(summary_statistics(fruit, fruit_type, number), "ERROR, this function only works for numeric input!
You have provided an object of class: character")})

test_that("Summary Statistics outputs the right size table, with expected values", {
  fruit <- data.frame(fruit_type = c("apple","apple","apple", "orange", "orange","orange","plum","plum","plum"),
                      number = c(10,7,45,3,45,67,89,0,12))
  #testing that this is giving the right structure of table - in this case the output should be a tibble that is 3 x 6
  expect_vector(summary_statistics(fruit, number, fruit_type), size = 3)
  expect_length(summary_statistics(fruit, number, fruit_type), 6)
  #testing the specific value of one cell
  expect_equal(summary_statistics(fruit, number, fruit_type)[[2,3]], 45)
})
