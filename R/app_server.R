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

  irisPlot2 <- ggplot(iris, aes(Sepal.Length)) +
    geom_density(fill = "#B9D2B1",
                 alpha = 0.5)

  output$irisGraph <- renderPlot(irisPlot)
  output$irisGraph2 <- renderPlot(irisPlot2)
}
