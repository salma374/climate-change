




#' b
#'
#'
#'transition parameter
#'
#'
#'
#' @param g  g2 parameter
#' @param qf quantile 90 percent of future data
#' @param p  g1 parameter
#' @param w quantile 60 percent of future data
#' @param c quantile 90 percent of control data
#' @param r quantile 60 percent of control data
#'
#' @return
#' @export
#'
#' @examples
get_b <- function(g,qf,p,w,c,r){

  b <- log((g * qf)/(p * w))/log((g * c)/(p * r) )
  b
}

#' a
#'
#' transition parameter
#'
#' @param w  quantile 60 percent of future data
#' @param r  quantile 60 percent of control data
#' @param p  g1 parameter
#' @param b  b parameter
#'
#' @return
#' @export
#'
#' @examples
get_a <- function(w,r,p,b){

  a <- w / (r^b) * p^(1-b)
  a
}
