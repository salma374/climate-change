



#' pr_trans_less
#'
#'
#' finding the transition precipitation for the value less than quantile 90 percent
#'
#' @param a  transition parameter
#' @param pr observed precipitation
#' @param b  transition parameter
#'
#' @return
#' @export
#'
#' @examples
pr_trans_less <- function(a,pr,b){
  pr_trans <- a * pr^ b
  pr_trans
}
