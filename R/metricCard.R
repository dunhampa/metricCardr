#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
metricCard <- function(message, width = NULL, height = NULL, elementId = NULL) {




  # forward options using x
  x = list(
    title = message$title,
    number =message$number,
    subtitle=message$subtitle
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'metricCard',
    x,
    width = width,
    height = height,
    package = 'metricCard',
    elementId = elementId
  )
}

#' Shiny bindings for metricCard
#'
#' Output and render functions for using metricCard within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a metricCard
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name metricCard-shiny
#'
#' @export
metricCardOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'metricCard', width, height, package = 'metricCard')
}

#' @rdname metricCard-shiny
#' @export
renderMetricCard <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, metricCardOutput, env, quoted = TRUE)
}
