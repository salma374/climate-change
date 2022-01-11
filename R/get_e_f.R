
#' get_e
#'
#'
#'the function find you the mean ex, the input data needs to be higher than 90 percent quantile
#'
#'
#' @param pr input data that should be higher than 90 percent quantile
#' @param qn quantile 90 percent of the input
#'
#' @return
#' @export
#'
#' @examples
get_e<- function(pr,qn){
  e <-  mean(pr - qn)
  e
}
