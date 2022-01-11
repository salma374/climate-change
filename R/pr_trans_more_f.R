


#' pr_trans_more
#'
#'
#' finding the transition precipitation for the value more than quantile 90 percent
#'
#' @param E the difference of e_f/e_c
#' @param pr observed precipitation
#' @param q  quantile 90 percent of observed data
#' @param a  transition parameter a
#' @param b  transition parameter b
#'
#' @return
#' @export
#'
#' @examples
pr_trans_more <- function(E,pr,q,a,b){

  pr_trans <-  E * (pr - q) + a * q ^ b
  pr_trans
}
