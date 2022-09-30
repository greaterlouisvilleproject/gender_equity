library(dplyr)
library(tidyr)
library(htmltools)
library(leaflet)
library(sf)
library(magrittr)
library(DT)
library(plotly)
library(shiny)
library(shinyWidgets)
library(scrollytell)




ui <- fluidPage(

  # Application title
  fluidRow(h2("Hi")),
  fluidRow(
    column(2),
    column(8,
    scrolly_container("scr"
                      , scrolly_graph( textOutput("section"),
                                       imageOutput("distPlot")

                      )
                      , scrolly_sections(
                        scrolly_section( id = 1,
                                         sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30)
                        ),
                        scrolly_section(id = 2,
                                        h3("Title"),
                                        p("dit is een paragraaf, die de grafiek rood maakt")
                        ),
                        scrolly_section(id = "blue","Blauw"),
                        scrolly_section(id = "pink","Rose"),
                        scrolly_section(id = "purple","Paars"),
                        scrolly_section(id = "orange","Oranje boven!")
                      ),
    ),
    column(2)
    )),
  div("Footer")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$distPlot <- renderImage({

    add <- input$scr

    print(getwd())
    print(add)


    image_name <- paste0("www/test", add, ".png")

    list(src = image_name)
  },

  deleteFile = FALSE

  )

  output$scr <- renderScrollytell({scrollytell()})
  output$section <- renderText(paste0("Section: ", input$scr))

  observe({cat("section:", input$scr, "\n")})
}

# Run the application
shinyApp(ui = ui, server = server)


