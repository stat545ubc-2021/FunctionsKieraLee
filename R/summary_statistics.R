#' Summary Statistics Columns
#'
#' This function will create columns in the dataset calculating the mean, median, standard
#' deviation, max and min of a variable column based on being grouped by a second column
#'
#' @param data is the dataset you wish to create the calculated columns within. data should contain the columns of interest
#' @param x is the column you wish to calculate the summary statistics on, must be numeric
#' @param y is the column that you will be grouping your data with
#'
#' @return 5 columns of summary statistics on x data, with one row for each correlating to the y grouping within the dataset data.
#' @importFrom dplyr group_by
#' @importFrom dplyr summarise
#' @importFrom stats median
#' @importFrom stats sd
#' @examples
#' letter <- data.frame(type = c("A","A","A", "O", "O","O","P","P","P"),number =c(1,7,4,3,45,7,9,0,2))
#' summary_statistics(letter, number, type)
#' @export
summary_statistics <- function (data, x, y) {
  if(!is.numeric(eval(substitute(x), data))) {
    stop('ERROR, this function only works for numeric input!\n',
         'You have provided an object of class: ', class(eval(substitute(x), data))[1])
  }
  output <- data %>%
    dplyr::group_by({{y}}) %>%
    dplyr::summarise(mean = mean({{x}}, na.rm = TRUE),
              median = median({{x}}, na.rm = TRUE),
              standard_deviation = sd({{x}}, na.rm = TRUE),
              max = max({{x}}, na.rm = TRUE),
              min = min({{x}}, na.rm = TRUE))
  return(output)
}
