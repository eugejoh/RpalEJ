#' Function to extract EJ colors as hex codes
#'
#' @param ... Character names of EJ_colours
#'
#' @return name and hex code for EJ colours
#'
#' @author Eugene Joh, MPH \email{ejoh@bu.edu}
#'
#' @examples
#' EJ_cols("killarney moss","manitoulin sky","niagara cabernet","haliburton green")
#'
#' @export

EJ_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (EJ_colours)

  EJ_colours[cols]
}

