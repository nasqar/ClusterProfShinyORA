tabItem(tabName = "datainput",
         hr(),
         fluidRow(column(6,
                         box(title = "Upload Data", solidHeader = T, status = "success", width = 12, collapsible = T,id = "uploadbox",

                             #downloadLink("instructionspdf",label="Download Instructions (pdf)"),
                             radioButtons('data_file_type','Use example file or upload your own data',
                                          c(
                                            'Upload .CSV'="csvfile",
                                            'Example Data'="examplecounts"
                                          ),selected = "csvfile"),

                             conditionalPanel(condition="input.data_file_type=='csvfile'",
                                              p("CSV counts file")

                             ),
                             conditionalPanel(condition = "input.data_file_type=='csvfile'",
                                              fileInput('datafile', 'Choose File(s) Containing Data', multiple = TRUE)
                             )

                         ),
                         conditionalPanel("output.fileUploaded",
                                          box(title = "Initialize Parameters", solidHeader = T, status = "primary", width = 12, collapsible = T,id = "iParamsbox",
                                              
                                              wellPanel(
                                                column(
                                                  4,
                                                       selectInput("geneColumn","Select Genes column:", choices = c("sdfs","dfs"))
                                                ),
                                                column(4,
                                                       selectInput("log2fcColumn","Select Log2FC column:", choices = c("sdfs","dfs"))
                                                ),
                                                column(4,
                                                       selectInput("padjColumn","Select padj column:", choices = c("sdfs","dfs"))
                                                ),
                                                column(6,
                                                       numericInput("padjCutoff","padj cutoff:", value = 0.05)
                                                ),
                                                column(6,
                                                       numericInput("logfcCuttoff","min log2 fold change :", value = 2)
                                                ),
                                                tags$div(class = "clearBoth")
                                              ),
                                              actionButton("nextInitParams","Next", class = "btn-info", style = "width: 100%")
                                              
                                          ),
                                          
                                          
                                          box(title = "EnrichGO object Parameters", solidHeader = T, status = "primary", width = 12, collapsible = T,id = "createGoBox", collapsed = T,
                                            wellPanel(
                                              column(6,
                                                     selectInput("organismDb","Organism:", choices = NULL, selected = NULL)
                                              ),
                                              column(6,
                                                     selectInput("keytype","Keytype:", choices = c(""), selected = NULL)
                                              ),
                                              column(6,
                                                     selectInput("ontology","Ontology:", choices = c("MF", "BP", "CC"), selected = "BP")
                                              ),
                                              column(4,
                                                     numericInput("minGSSize","minGSSize:", value = 5)
                                              ),
                                              column(4,
                                                     numericInput("maxGSSize","maxGSSize:", value = 500)
                                              ),
                                              column(6,
                                                     numericInput("pvalCuttoff","P-Value Cutoff:", value = 0.05)
                                              ),
                                              column(6,
                                                     numericInput("qvalCuttoff","Q-Value Cutoff:", value = 0.1)
                                              ),
                                              column(6,
                                                     selectInput("pAdjustMethod","pAdjustMethod:", choices = c("holm", "hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none"), selected = "none")
                                              ),
                                              tags$div(class = "clearBoth")
                                            ),
                                            actionButton("initGo","Create EnrichGO Object", class = "btn-info", style = "width: 100%")
                                          )
                         )
         ),#column
         column(6,
                bsCollapse(id="input_collapse_panel",open="data_panel",multiple = FALSE,
                           bsCollapsePanel(title="Data Contents Table:",value="data_panel",
                                           p("Note: if there are more than 20 columns, only the first 20 will show here"),
                                           textOutput("inputInfo"),
                                           withSpinner(dataTableOutput('countdataDT'))
                           )
                )#bscollapse
         )#column
         )#fluidrow
)#tabpanel
