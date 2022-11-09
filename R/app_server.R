#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  output$irisOut <- renderTable(iris)

  irisPlot <- ggplot(iris, aes(Species, Sepal.Length)) +
    geom_bar(stat = "identity")

  output$irisGraph <- renderPlot(irisPlot)
}
