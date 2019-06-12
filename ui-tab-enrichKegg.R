tabItem(tabName = "enrichKeggTab",
        
        conditionalPanel("output.enrichKEGGAvailable",
                         
                                  column(2,
                                         h3(strong("enrichKEGG Results")),
                                         hr(),
                                         checkboxInput("showGeneidKegg","Show geneID column", value = F),
                                         downloadButton('downloadEnrichKEGGCSV','Save Results as CSV File', class = "btn btn-info", style="margin: 7px;"),
                                         actionButton("gotoKeggPlots","enrichKEGG Plots",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         actionButton("gotoPathview","Generate Pathview Plot",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         actionButton("gotoWordcloud1","Word Cloud",class = "btn btn-warning",icon = icon("chart-area"), style="margin: 7px;"),
                                         
                                         wellPanel(h4(strong("Output warning:"), tags$a(href = "#", bubbletooltip = "Description ...",icon("info-circle"))),
                                                   htmlOutput("warningText"), style = "background-color: #f9d8d3;")
                                         
                                         ),
                                  column(10,
                                         tags$div(class = "BoxArea2",
                                         withSpinner(dataTableOutput('enrichKEGGTable'))
                                         ),
                                         tags$div(class = "clearBoth")
                                         ),
                                  tags$div(class = "clearBoth")
                         
        )
)