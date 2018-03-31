#' Load ggplot2 scale for fill aesthetic options based on EJ colours
#'
#' @param palette Character name of palette in EJ_palettes
#' @param discrete Boolean indicating whether the discrete variable used
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to discrete_scale() or scale_color_gradientn()
#'
#' @importFrom ggplot2 scale_colour_manual scale_color_gradientn discrete_scale
#' @importFrom grDevices colorRampPalette
#'
#' @return vector() of selected colours based on palette argument
#'
#' @author Eugene Joh, MPH \email{ejoh@bu.edu}
#'
#' @export
#'
#' @examples
#' data(mtcars)
#'
#' ggplot(mpg, aes(x=hwy, y=disp, size=hp)) +
#'   geom_point(aes(col=model) +
#'   scale_colour_EJ(palette="main", discrete=TRUE, reverse=TRUE)
scale_colour_EJ <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- EJ_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("EJ_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
