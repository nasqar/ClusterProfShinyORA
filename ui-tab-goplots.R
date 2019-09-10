tabItem(tabName = "goplotsTab",
        h2(strong("GO Plots")),
        tags$div(
        box(title = "Upset Plot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "barplot",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_upset", "number of categories to show", value = 10)
                     )
              ),
              column(9,
                     wellPanel(
                       withSpinner(plotOutput(outputId = "upsetPlot"),type = 8)
                     )
              )
            )
        ),
        box(title = "Bar Plot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "barplot",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_bar", "number of categories to show", value = 10)
                     )
                     ),
              column(9,
                     wellPanel(
                       withSpinner(plotOutput(outputId = "barPlot"),type = 8)
                     )
                     )
            )
        ),
        box(title = "Dot Plot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "dotplot",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_dot", "number of categories to show", value = 10)
                     )
              ),
              column(9,
                     wellPanel(
                       withSpinner(plotOutput(outputId = "dotPlot"),type = 8)
                     )
                     
              )
            )
        ),
        box(title = "Encrichment plot map", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "enrichPlotMap",
            fluidRow(
              column(3,
                     wellPanel(
                       numericInput("showCategory_enrichmap", "number of categories to show", value = 5)
                     )
              )
              ,
              column(9,
                     wellPanel(
                      plotOutput(outputId = "enrichPlotMap")
                     )
              )
            )
        ),
        box(title = "Category Netplot", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "goInducedGraph",
            fluidRow(
              column(12,
                     wellPanel(
                       numericInput("showCategory_goplot", "number of categories to show", value = 5)
                     )
              )
              ,
              column(12,
                     wellPanel(
                       plotOutput(outputId = "goInducedGraph")
                     )
              )
            )
        ),
        box(title = "Enriched GO induced graph (cnetplot)", solidHeader = T, status = "danger", width = 12, collapsible = T,id = "cnetplot",
            fluidRow(
              column(12,
                     wellPanel(
                       numericInput("showCategory_cnet", "number of categories to show", value = 5)
                     )
              ),
              column(12,
                     wellPanel(
                       plotOutput(outputId = "cnetplot",width = "100%", height = "400px")
                     )
              )
            )
        )
        
        , style = "display:table;")
)