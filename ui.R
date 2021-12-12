# k-means only works with numerical variables,
# so don't give the user the option to select
# a categorical variable
vars <- setdiff(names(iris), "Species")

pageWithSidebar(
  headerPanel('k-means clustering of Iris dataset'),
  sidebarPanel(
    selectInput('xcol', 'X Variable(predictor)', vars),
    selectInput('ycol', 'Y Variable(target)', vars, selected = vars[[2]]),
    numericInput('clusters', 'Number of Clusters', 3, min = 1, max = 15)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)