library(dplyr)
library(tidyr)
library(htmltools)
library(timevis)
library(leaflet)
library(sf)
library(magrittr)
library(DT)
library(plotly)
library(shiny)
library(shinyWidgets)
#library(shinyjs)

# library(dygraphs)
# library(xts)

library(scales)
# library(stringr)
# library(lubridate)

setwd("app")

# Define UI for application that draws a histogram
ui <- navbarPage(

  title =  div(
    "Gender Equity in Louisville",
    div(
      id = "img-id",
      img(src = "GLP_logo_short2.png", height = 50)
    )
  ),

  #theme = shinythemes::shinytheme("paper"),

  header = tags$head(includeCSS("styles.css")),
  windowTitle = "ARP in Louisville",

  tabPanel(
    "Welcome",
    fluidRow(
      column(12, align = "center",
             h2("Intro Page"))),
    fluidRow(
      column(10, offset = 1, class = "story",
             h5("This is a project of the Greater Louisville Project and the Louisville Metro Government Office for Women.")))

  ),

  tabPanel(
    "Housing",
    fluidRow(
      column(12, align = "center",
             h2("Housing"))),

    fluidRow(
      column(10, offset = 1, class = "story",
             p("The WHC was incorporated in 1980 by a group of women who, after conducting research,
               learned that women experiencing homelessness were invisible in the community.
               Due to the lack of resources available for these women, the WHC was created to assist this overlooked population with safe,
               affordable housing that responded to their unique needs. As the demand for affordable,
               service enriched housing has evolved, the WHC has expanded its vision beyond only serving women."),
             p(tags$strong("Source:"), tags$a(href="https://www1.nyc.gov/site/ocdv/services/introduction-to-domestic-violence-and-gender-based-violence.page#:~:text=What%20is%20Gender%2DBased%20Violence,situational%20power%20imbalances%20and%20inequities", "NYC"))
             ))),

  tabPanel(
    "Gender Based Violence",
    fluidRow(
      column(12, align = "center",
             h2("Gender Based Violence"))),

    fluidRow(
      column(10, offset = 1, class = "story",
             p('According to nyc.gov, “Gender-based violence is a general term used to capture any type of violence that is rooted in
             exploiting unequal power relationships between genders. This can include gender norms and role expectations
             specific to a society as well as situational power imbalances and inequities.”
             This includes intimate partner violence and family violence.
             Intimate partner violence “is a pattern of coercive and abusive behaviors used by one partner to maintain power
             and control over another partner in an intimate relationship.”
             From the same website, “Family Violence is any abusive behavior that occurs between members of a family or household
             who are not involved in a romantic relationship.”')))))

#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

server <- function(input, output, session) {

}





# Define server logic required to draw a histogram


shinyApp(ui = ui, server = server)
