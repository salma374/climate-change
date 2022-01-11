

#' get_tem_trans
#'
#'
#' it finds the transition of T
#'
#' @param mo mean of observed T
#' @param mf mean of upcoming T
#' @param mc mean of control T
#' @param to observed T
#' @param sd difference of standard deviation sdt_f/sdt_c
#'
#' @return
#' @export
#'
#' @examples
get_tem_trans <- function(mo,mf,mc,to,sd){

  tem_trans <- mo + mf - mc + (to - mo) * sd
  tem_trans
}
