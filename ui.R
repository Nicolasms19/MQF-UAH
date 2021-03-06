

# 0.) ui ####
skin <- Sys.getenv("DASHBOARD_SKIN")
skin <- tolower(skin)
if (skin == "")
  skin <- "black"



# 1.) dashboardPage ####
ui <- dashboardPage(
      dashboardHeader(title = 'QuanTradeR', titleWidth = 250, 
                      
                      tags$li(class="dropdown",tags$a(href="https://github.com/Aggarch/", 
                                                      icon("github","fa-2x"), "",
                                                      style= "padding-left:27px,width:650px;height:40px",
                                                      target="_blank")),
                      tags$li(class="dropdown",tags$a(href="https://www.teletrader.com/markets/world", 
                                                      icon("accusoft","fa-2x"), "",
                                                      style= "padding-left:27px,width:650px;height:40px",
                                                      target="_blank")),
                      tags$li(class="dropdown",tags$a(href="https://twitter.com/AndgTrader", 
                                                      icon("twitter","fa-2x"), "",
                                                      style= "padding-left:27px,width:650px;height:40px",
                                                      target="_blank")),
                      tags$li(class="dropdown",tags$a(href="https://www.bloomberg.com/live", 
                                                      icon("newspaper","fa-2x"), "",
                                                      style= "padding-left:27px,width:650px;height:40px",
                                                      target="_blank"))),
      dashboardSidebar(width = 250,
                   sidebarMenu(
                     menuItem("Presentation", tabName = "home", icon = icon("file-code   ")),
                     menuItem("DataFlow", tabName = "dflow", icon = icon("database"   )),
                     menuItem("FrameWork", tabName = "fwork", icon = icon("crop-alt"   )),
                     
                     menuItem("Sentiment", tabName = "sentiment", icon = icon("twitter   ")
                              # menuSubItem('Portfolio', tabName = 'portfolio', icon = icon("circle-notch")),
                              # menuSubItem('Notes', tabName = 'notes', icon = icon("circle-notch"))
                     ),
                     
                     menuItem("Description", tabName = "description", icon = icon("poll   ")
                              # menuSubItem('Macroeconomics', tabName = 'macroeconomics', icon = icon("circle-notch")),
                              # menuSubItem('Indexes', tabName = 'indexes',  icon = icon("circle-notch")),
                              # menuSubItem('Comodities', tabName = 'comodities',  icon = icon("circle-notch")),
                              # menuSubItem('Currencies', tabName = 'comodities',  icon = icon("circle-notch"))
                     ),
                     menuItem("Prediction", tabName = "prediction", icon = icon("project-diagram    ")
                              # menuSubItem('FedMeeting Matrix', tabName = 'fedmeetings', icon = icon("circle-notch")),
                              # menuSubItem('Time series', tabName = 'timeseries', icon = icon("circle-notch")),
                              # menuSubItem('Montecarlo', tabName = 'montecarlo', icon = icon("circle-notch"))
                     ),
                     menuItem("Prescription", tabName = "prescription", icon = icon("chart-line   ")
                              # menuSubItem('Portfolio', tabName = 'portfolio', icon = icon("circle-notch")),
                              # menuSubItem('Notes', tabName = 'notes', icon = icon("circle-notch"))
                     ),
                    
                     br(), br(),br(),br(),br(),  br(), br(),br(),br(),br(),
                     br(), br(),br(),br(),br(),  br(), br(),br(),br(),br(),
                     br(), 
                     
                     div(
                     tags$a(href="https://cran.r-project.org/web/packages/tidyquant/index.html","Powered by",
                              style = "padding-left:11px"),
                     tags$a(href="https://fred.stlouisfed.org/" ,"©"),
                     # tags$a(href="https://github.com/Aggarch/MQF-UAH" ,"*"),
                     
                     br(),
                  
                     tags$img(src='rstudio_logo_white.png', height=40, width=120, 
                              style = "padding-left:27px"),
                     tags$img(src='fred_white_2.png', height=40, width=40,
                              style= "padding-left:7px"),

                     )
                        )
                     # tags$blockquote("Andrés García & Sagith Amín"))
                 
                   

#home 



# 3.) home ####

  ),
  dashboardBody(
    tabItems(
      tabItem("home",
                     fluidPage(
                           column(12,
                               wellPanel(
                                 h1("Quantitative Market Analytics"), 
                                 # tags$a(href="https://github.com/Aggarch/MQF-UAH" ,"GitHub",
                                 #        style = "padding-left:7px"),
                                 
                                 hr(),
                                 h3(
                                 helpText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit, 
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere. 
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat tus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purus.      
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat leo.",

                                  "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purus.
                                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit,
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere.",hr(),

                                  tags$img(src   = "data_science.png", width = "650px", height = "240px", 
                                           style = "width:720px;height:300px;display:block;margin:auto"),br(),
                                  tags$a(href="https://r4ds.had.co.nz/","R for Data Science"))
                                 
                                 )
                                 
                                 )
                             )
                         )
                      ),
      
      tabItem("dflow",
              fluidPage(
                column(12,
                       wellPanel(
                         h3("DataFlow"), 
                         tags$a(href="https://es.wikipedia.org/wiki/Cross_Industry_Standard_Process_for_Data_Mining" ,"CRISP-DM",
                                style = "padding-left:7px"),
                         
                         hr(),
                         h4(
                           helpText("",
                                    
                                    tags$img(src= "data_flow.png", style ="width:900px;height:600px;display:block;margin:auto"))
                           )
                        )
                    )
               )
          ),
      tabItem("fwork",
              fluidPage(
                column(12,
                       wellPanel(
                         h3("Analytics Framework"), 
                         tags$a(href="https://www.gurobi.com/company/about-gurobi/prescriptive-analytics/" ,"Analytics",
                                style = "padding-left:7px"),
                         
                         hr(),
                         h4(
                           helpText("",
                                    
                                    tags$img(src= "https://www.gurobi.com/wp-content/uploads/2018/12/analytic-types-chart.png",
                                             style ="width:900px;height:500px;display:block;margin:auto"))
                         )
                       )
                )
              )
      ),
      
      


# 4.) description ####


      tabItem("description",
              fluidPage(
                useShinyalert(),
                column(4,
                       wellPanel(
                         h2("Descriptive Market Analytics"),
                         
                           helpText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere. 
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat leo.
                                  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purusat ipsum luctus varius. 
                                  Proin varius quam at congue posuere purus."),
                         
                         pickerInput(
                           inputId = "variable",
                           label = "Variables",
                           choices = market_list,
                           selected = "SP500",
                           multiple = TRUE
                           
                         ),
                         textInput(inputId = "text", 
                                   label = "Stock Ticker", value = "Enter text..."),  ####
                         
                         dateRangeInput ("daterange" , "Date Interval:" ,
                                          start   =  today()-365,
                                          end     =  today(),
                                          min     =  "2008-01-01",
                                          max     =  today()+ 365,
                                          separator = " - " ,
                                          startview = "year"),
                         actionButton(inputId = "observe", label = "Describe",
                                      icon = icon('chart-bar'))
                       )
                ),
                column(8,
                       fluidPage(
                         wellPanel(
                           tabsetPanel(
                             tabPanel("Price Evolution", withSpinner(plotlyOutput("evolution",height = "600px"),
                                                                     color="#1da1f2")),
                             
                             tabPanel("Price Returns", withSpinner(plotlyOutput("returns",height = "600px"),
                                                                   color="#1da1f2")),
                             
                             tabPanel("Rolling Correlation", withSpinner(plotlyOutput("rolling_cor",height = "600px"),
                                                                         color="#1da1f2")), 
                             
                             tabPanel("Correlation Matrix", withSpinner(plotOutput("index_cor",height = "600px"),
                                                                        color="#1da1f2"))
                            

                           )
                         )
                         
                       )
                       
                )
              )
              
      ),


#prediction

# 5.) prescription ####


#prediction
      tabItem("prediction",
              fluidPage(
                useShinyalert(),
                    column(4,
                       wellPanel(
                         h2("Predictive Market Analytics"),
                         helpText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit, 
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere. 
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat leo.
                                  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purus."),
                         pickerInput(
                           inputId = "variable_1",
                           label = "Variables",
                           selected = "SP500",
                           choices = market_list[1:4],
                           multiple = F),

                         textInput(inputId = "text", 
                                   label = "Stock Ticker", value = "Enter text..."),  ####
                         
                         dateRangeInput ("daterange_1" , "Date Interval:" ,
                                         start   =  today()-1500,
                                         end     =  today()+95,
                                         min     =  "2008-01-01",
                                         max     =  today()+ 365,
                                         separator = " - " ,
                                         startview = "year"),
                         actionButton(inputId = "observe_1", label = "Forecast", icon = icon('money-bill-wave'))
                       )
                ),
                column(8,
                       fluidPage(
                         wellPanel(
                           tabsetPanel(
                             tabPanel("Time Series", withSpinner(plotlyOutput("fcast",height = "600px"),
                                                                        color="#1da1f2")),
                             
                             tabPanel("TS Returns", withSpinner(plotlyOutput("tsr",height = "600px"),
                                                                         color="#1da1f2")),

                             tabPanel("Trend Decomposition", withSpinner(plotOutput("trend",height = "600px"),
                                                                         color="#1da1f2")),

                             tabPanel("TS Daypoints", withSpinner(dataTableOutput("changep",height = "600px"),
                                                                     color="#1da1f2"),
                                      boton_descarga("down", "Forecast"))
                   
                             
                       
                           )
                         )
                         
                      )
                   
                )
              )
              
      ),


#prescription

# 6.) prescription ####

      tabItem("prescription",
              fluidPage(
                column(4,
                       wellPanel(
                         h2("Prescriptive Market Analytics"),
                         helpText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit, 
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere. 
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat leo.
                                  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purus."),
                         pickerInput(
                           inputId = "variable_2",
                           label = "Variables",
                           choices = market_list, 
                           selected = "SP500",
                           multiple = TRUE
                         ), 
                         textInput(inputId = "text", 
                                   label = "Stock Ticker", value = "Enter text..."),  ####
                         
                         dateRangeInput ("daterange_2" , "Date Interval:" ,
                                         start   =  today()-365,
                                         end     =  today(),
                                         min     =  "2008-01-01",
                                         max     =  today()+ 365,
                                         separator = " - " ,
                                         startview = "year"),
                         actionButton(inputId = "observe_2", label = "Diagnose", icon = icon("search-dollar"))
                       )
                ),
                column(8,
                       fluidPage(
                         wellPanel(
                           tabsetPanel(
                             tabPanel("Portfolios", withSpinner(plotOutput("portfolio",height = "600px"),
                                                                        color="#1da1f2")),

                             tabPanel("All Weather", withSpinner(plotlyOutput("all_weather",height = "600px"),
                                                                         color="#1da1f2")),

                             tabPanel("Recomendations", withSpinner(plotlyOutput("recomendations",height = "600px"),
                                                                     color="#1da1f2")),

                             tabPanel("Mark to Market", withSpinner(plotlyOutput("m2m",height = "600px"),
                                                                   color="#1da1f2"))
                          
                           )
                         )
                         
                       )
                       
                )
              )
              
      ),

tabItem("sentiment",
        fluidPage(
          useShinyalert(),
            column(3,
                 wellPanel(
                   h2("Market Sentiment"),
                   
                   helpText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit
                                  sapien quis convallis porttitor, nunc justo ultrices justo, ut laoreet nisl risus vitae nisl.
                                  Donec dictum risus at ipsum luctus varius. Proin varius quam at congue posuere. 
                                  Fusce fringilla tellus pretium, egestas lorem at, volutpat leo.
                                  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                                  Proin leo tortor, pulvinar non massa commodo, tempus vulputate purusat ipsum luctus varius. 
                                  Proin varius quam at congue posuere purus."),
                   
                   # pickerInput(
                   #   inputId = "variable",
                   #   label = "Variables",
                   #   choices = market_list,
                   #   multiple = TRUE,
                   #   selected = "SP500"
                   #   
                   # ),
                   textInput(inputId ="hashtag", 
                             label = h2("#Hashtag"), value = "recession" ) ,  ####
                   
                 #   dateRangeInput ("daterange" , "Date Interval:" ,
                 #                   start   =  today()-365,
                 #                   end     =  today(),
                 #                   min     =  "2008-01-01",
                 #                   max     =  today()+ 365,
                 #                   separator = " - " ,
                 #                   startview = "year"),
                    actionButton(inputId = "observer", label = "Feel", icon = icon('comments-dollar'))
                  )
          ),
          column(9,
                 fluidPage(
                   wellPanel(
                     tabsetPanel(
                       
                       tabPanel("Google Trends", withSpinner(plotlyOutput("google_trends",height = "600px"),
                                                             color="#1da1f2")),
                       
                       tabPanel("Newspapers", withSpinner(dataTableOutput("news",height = "600px"),
                                                          color="#1da1f2")),
                 
                       tabPanel("Frequency Charts", withSpinner(plotlyOutput("freq",height = "600px"),
                                                             color="#1da1f2")),
                     
                       tabPanel("Sentiment", withSpinner(dataTableOutput("hashtag",height = "600px"),
                                                         color="#1da1f2"))
                       
                      

                       # tabPanel("Correlation Matrix", withSpinner(plotOutput("index_cor",height = "600px"),
                       #                                            color="#1da1f2"))
                       
                       
                     )
                   )
                   
                 )
                 
          )
        )
        
),
      tabItem("comodities")
      
    )
  )
)

