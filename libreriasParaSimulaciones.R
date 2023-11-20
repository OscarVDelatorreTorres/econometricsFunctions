
cargaFunciones=function(preguntar=TRUE,MSGARCHinstall=FALSE){


  if (isTRUE(preguntar)){

    print(" Para instalar algunas librerias debe instalar previamente")
    respuestaGFortran=readline("GFortran en su computadora. Lo tiene instalado? (si / no):")

    switch (respuestaGFortran,
            "si"={

              libreriasACargar(MSGARCHinstall=FALSE)

              cat("\f")
              print("Las librerías necesarias para las simulaciones de investigación se encuentran cargadas...")

            },

            "no"={
              cat("\f")
              print("Por favor instale primero GFortran en esta liga:")
              print("https://github.com/fxcoudert/gfortran-for-macOS/releases")
            },
            {
              cat("\f")
              print("Su respuesta a la pregunta no fue 'si' o 'no'. ")
              print("Debe ser exacta su respuesta. Intente de nuevo o ")
              print("por favor instale primero GFortran en esta liga:")
              print("https://github.com/fxcoudert/gfortran-for-macOS/releases")
            }
    )

  } else {

    libreriasACargar(MSGARCHinstall=FALSE)

    # Quandl token:
    set_app_id('617a3f4d2db44d8f859314f8b45307a9be2d33cd')
    # Banxico token
    banxico.token="b6b5b54077d88fce3eb64e2b92b0fc188923abe20cefc65a9f569b70f483128a"
    setToken(banxico.token)
    # FRED tocken:
    fredr_set_key("6f5316a46db96bafecb5431706a63bad")

    cat("\f")
    print("Las librerías necesarias para las simulaciones de investigación se encuentran cargadas...")

  }

  }

cat("\f")

libreriasACargar=function(MSGARCHinstall=FALSE){

  if (!require(Quandl)) {install.packages('Quandl')
    library(Quandl)} else {library(Quandl)}
  if (!require(devtools)) {install.packages('devtools')
    library(devtools)} else {library(devtools)}
  if (!require(openxlsx)) {install.packages('openxlsx')
    library(openxlsx)} else {library(openxlsx)}
  if (!require(plotly)) {devtools::install_github("ropensci/plotly")
    library(plotly)} else {library(plotly)}
  if (!require(eikonapir)) {devtools::install_github("ahmedmohamedali/eikonapir")
    library(eikonapir)} else {library(eikonapir)}
  if (!require(RSQLite)) {install.packages('RSQLite')
    library(RSQLite)} else {library(RSQLite)}
  if (!require(tseries)) {install.packages('tseries')
    library(tseries)} else {library(tseries)}
  if (!require(xts)) {install.packages('xts')
    library(xts)} else {library(xts)}
  if (!require(forecast)) {install.packages('forecast')
    library(forecast)} else {library(forecast)}
  if (!require(MTS)) {install.packages('MTS')
    library(MTS)} else {library(MTS)}
  if (!require(fracdiff)) {install.packages('fracdiff')
    library(fracdiff)} else {library(fracdiff)}
  #if (!require(pomp)) {devtools::install_github("kingaa/pomp")
  # library(pomp)} else {library(pomp)}
  if (isTRUE(MSGARCHinstall)){
    if (!require(MSGARCH)) {devtools::install_github("keblu/MSGARCH", subdir="Package")
      library(MSGARCH)} else {library(MSGARCH)}    
  }

  
  
  if (!require(vars)) {install.packages('vars')
    library(vars)} else {library(vars)}
  if (!require(tictoc)) {install.packages('tictoc')
    library(tictoc)} else {library(tictoc)}
  if (!require(gridExtra)) {install.packages('gridExtra')
    library(gridExtra)} else {library(gridExtra)}
  if (!require(ggpubr)) {install.packages('ggpubr')
    library(ggpubr)} else {library(ggpubr)}
  if (!require(RColorBrewer)) {install.packages('RColorBrewer')
    library(RColorBrewer)} else {library(RColorBrewer)}
  if (!require(ComplexHeatmap)) {install_github("jokergoo/ComplexHeatmap")
    library(ComplexHeatmap)} else {library(ComplexHeatmap)}
  if (!require(lubridate)) {install.packages("lubridate")
    library(lubridate)} else {library(lubridate)}
  if (!require(hrbrthemes)) {install.packages("hrbrthemes")
    library(hrbrthemes)} else {library(hrbrthemes)}
  if (!require(stargazer)) {install.packages("stargazer")
    library(stargazer)} else {library(stargazer)}
  if (!require(lubridate)) {install.packages("lubridate")
    library(lubridate)} else {library(lubridate)}
  if (!require(siebanxicor)) {install.packages("siebanxicor")
    library(siebanxicor)} else {library(siebanxicor)}
  if (!require(plotly)) {install.packages("plotly")
    library(plotly)} else {library(plotly)}
  if (!require(depmixS4)) {install.packages("depmixS4")
    library(depmixS4)} else {library(depmixS4)}
  if (!require(tibble)) {install.packages("tibble")
    library(tibble)} else {library(tibble)}
  if (!require(stringr)) {install.packages("stringr")
    library(stringr)} else {library(stringr)}
  if (!require(MSwM)) {install.packages('MSwM')
    library(MSwM)} else {library(MSwM)}
  if (!require(MTS)) {install.packages('MTS')
    library(MTS)} else {library(MTS)}
  if (!require(ggpubr)) {install.packages('ggpubr')
    library(ggpubr)} else {library(ggpubr)}
  if (!require(neuralnet)) {install.packages('neuralnet')
    library(neuralnet)} else {library(neuralnet)}
  if (!require(httr)) {install.packages('httr')
    library(httr)} else {library(httr)}
  if (!require(jsonlite)) {install.packages('jsonlite')
    library(jsonlite)} else {library(jsonlite)}
  if (!require(fredr)) {install.packages('fredr')
    library(fredr)} else {library(fredr)}
  if (!require(reshape)) {install.packages('reshape')
    library(reshape)} else {library(reshape)}
  if (!require(reshape2)) {install.packages('reshape2')
    library(reshape2)} else {library(reshape2)}
  if (!require(rugarch)) {install.packages('rugarch')
    library(rugarch)} else {library(rugarch)}
  if (!require(fGarch)) {install.packages('fGarch')
    library(fGarch)} else {library(fGarch)}
  if (!require(car)) {install.packages('car')
    library(car)} else {library(car)}
  if (!require(sandwich)) {install.packages('sandwich')
    library(sandwich)} else {library(sandwich)}
  if (!require(flextable)) {install.packages('flextable')
    library(flextable)} else {library(flextable)}
  if (!require(officer)) {install.packages('officer')
    library(officer)} else {library(officer)}

  # Quandl token:
  set_app_id('617a3f4d2db44d8f859314f8b45307a9be2d33cd')
  # Banxico token
  banxico.token="b6b5b54077d88fce3eb64e2b92b0fc188923abe20cefc65a9f569b70f483128a"
  setToken(banxico.token)
  # FRED tocken:
  fredr_set_key("6f5316a46db96bafecb5431706a63bad")

}

# Funciones a la medida:

# Convierte data.frame de diario a semanal:


tabla.semanal=function(datos){
  data=datos
  semanas=as.character(cut(datos$Date,"week"))
  data$semanas=semanas
  semanas=levels(factor(semanas))
  columnas=colnames(datos)
  for (a in 1:length(semanas)){
    if (a<2){
      dateRowId=min(which(data$semanas==semanas[a]))
      
      datosSemanal=as.data.frame(
        c(semanas[a],data[dateRowId,2:ncol(datos)])
      )
      colnames(datosSemanal)=columnas
    } else {
      dateRowId=min(which(data$semanas==semanas[a]))
      
      datosSemanalb=as.data.frame(
        c(semanas[a],data[dateRowId,2:ncol(datos)])
      )
      colnames(datosSemanalb)=columnas
      
      datosSemanal=rbind(datosSemanal,datosSemanalb)
    }
  }
  return(datosSemanal)
}