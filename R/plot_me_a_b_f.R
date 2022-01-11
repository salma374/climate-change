
#' plot_me_a_b
#'
#'
#' visualizing a and b parameters
#'
#' @param a a input "transition parameter"
#' @param b b input "transition parameter"
#'
#' @return
#' @export
#'
#' @examples
plot_me_a_b <- function(a,b){
  par(mfrow=c(1,2))
  boxplot(a,main="a",col = "orange")
  boxplot(b,main="b",col = "cyan4")

}

