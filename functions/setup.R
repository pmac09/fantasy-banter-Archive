

executeSQL <- function(query){
  
  #Import database connection strings
  source(file.path("./functions", "connStrings.R"), local = TRUE)

  #Ensure Connections are available
  closeAllConnections()
  
  #Build connection string
  con <- dbConnect(dbDriver("MySQL")
                   , user= vUser
                   , password= vPassword 
                   , host= vHost
                   , port= vPort 
                   , dbname= vDBname)
  
  #Try SQL execution
  data <- tryCatch(
    {
      dbGetQuery(con, query)
    },
    error=function(cond) {
      message(paste0("ERROR - SQL statement failed: ", query))
      message(cond)
      return(NA)
    },
    warning=function(cond) {
      message(paste0("WARNING - SQL statement warning: ", query))
      message(cond)
      return(NA)
    },
    finally= {
      #Close database connections
      dbDisconnect(con)
      closeAllConnections()
    })
  
  #Return result
  return(data)
  
}