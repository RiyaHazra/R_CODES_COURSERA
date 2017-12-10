pollutantmean<-function(directory,pollutant,id=1:332){
  filename<-list.files(path=directory,pattern = "*.csv",recursive = F)
  data_frame<-filename[id]
  data_set2 <- data.frame(date = as.Date(character(),sulfate=as.numeric(),nitrate=as.numeric(),id=as.numeric()),stringsAsFactors=FALSE)
  for(i in data_frame){
    data_set1<-read.csv(file.path(directory,i),header=TRUE,sep=",")
    data_set2<-rbind(data_set2,data_set1)
  }
  col<-data_set2[,pollutant]
  mean(col,na.rm =TRUE)
}
