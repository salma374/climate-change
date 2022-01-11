


#' ex_data
#'
#' the inputs should be raster or vectors
#'
#' @param big main data
#' @param small what you want to extract by
#'
#' @return
#' @export
#'
#' @examples
ex_data <- function(big,small){

  extracted = terra::extract(big,small)
  extracted

}
