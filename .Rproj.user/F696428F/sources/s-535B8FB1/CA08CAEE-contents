#' Return function to interpolate a EJ colour palette
#'
#' @param palette Character name of palette in EJ_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @return vector() of selected colours based on palette argument
#'
#' @author Eugene Joh, MPH \email{ejoh@bu.edu}
#'
#' @export
#'
#' @examples
#' EJ_pal("accent")(5)
#'

EJ_pal <- function(palette = "primary", reverse = FALSE, ...) {
  pal <- EJ_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
