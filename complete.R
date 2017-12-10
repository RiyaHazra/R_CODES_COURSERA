complete<-function(directory,id=1:332){
  filename<-list.files(path=directory,pattern = "*.csv",recursive = F)
  data_frame<-filename[id]
  data_set2<-data.frame(id = as.character(),nobs = as.numeric())
  for(i in data_frame){
    data_set1<-read.csv(file.path(directory,i),header=TRUE,sep=",")
    row_count<-nrow(data_set1[complete.cases(data_set1), ])
    name<-tools::file_path_sans_ext(i)
    #print(name)
    data_set2 <- rbind(data_set2, data.frame(id = name, nobs = row_count))
    #data_set2<-c(name,row_count)
    #data_set2<-rbind(data_set2,data_set2)
  }
  print(data_set2)
}