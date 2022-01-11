
#' get_g1
#'
#' @param oq quantile 60 percent of observed data
#' @param cq quantile 60 percent of control data
#'
#' @return
#' @export
#'
#' @examples
get_g1 <- function(oq,cq){

  g1 <- oq / cq
  g1
}

#' get_g2
#'
#' @param oq quantile 90 percent of observed data
#' @param cq quantile 90 percent of control data
#'
#' @return
#' @export
#'
#' @examples
get_g2 <- function(oq,cq){

  g2 <- oq / cq
  g2
}
