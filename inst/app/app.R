Sys.setlocale("LC_MESSAGES", locale = "fr_FR.utf8")
library(shiny)

ui <- fluidPage(

   titlePanel("Hello, gettext!"),
   h2("Implicit domain"),
   textOutput("hello"),
   br(),
   h2("Explicit domain"),
   textOutput("hello2")
)

server <- function(input, output) {

   output$hello <- renderText({
      gettext::hello()
   })

   output$hello2 <- renderText({
     gettext::hello2()
   })
}

shinyApp(ui = ui, server = server)

