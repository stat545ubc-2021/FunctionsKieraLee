
# SummaryStatstics

SummaryStatistics is a package made by Kiera Lee for STAT545B at The
University of British Columbia. SummaryStatistics was made with the
`devtools` package.

The goal of SummaryStatstics is to help the user efficiently create
summary statistics for the data they are analyzing With the use of
SummaryStastics, the user can use the provided functions to get
necessary data.

This package contains the following functions

1.  `summary_stastics()`  
    A functions that produces a tibble of size 6x3 with the summary
    statistics mean, median, standard deviation of a numerical variable,
    based on a grouping.

Please see the vignette for more detailed explanation of each function.

## Installation

You can install the released version of SummaryStatstics from
[Github](https://github.com) with:

``` r
devtools::install_github("kieraaleee/SummaryStatistics", build_vignettes = TRUE, ref = "0.1.0")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(SummaryStatstics)
```

    ## Warning: replacing previous import 'dplyr::filter' by 'stats::filter' when
    ## loading 'SummaryStatstics'

    ## Warning: replacing previous import 'dplyr::lag' by 'stats::lag' when loading
    ## 'SummaryStatstics'

``` r
#if this is a very basic data set that you are working with 
fruit <- data.frame(fruit_type = c("apple","apple","apple", "orange", "orange","orange","plum","plum","plum"),
                      number = c(10,7,45,3,45,67,89,0,12))

#using the function summary_stastics()
summary_statistics(fruit, number, fruit_type)
```

    ## # A tibble: 3 × 6
    ##   fruit_type  mean median standard_deviation   max   min
    ##   <chr>      <dbl>  <dbl>              <dbl> <dbl> <dbl>
    ## 1 apple       20.7     10               21.1    45     7
    ## 2 orange      38.3     45               32.5    67     3
    ## 3 plum        33.7     12               48.3    89     0
