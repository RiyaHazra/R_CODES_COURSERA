corr<-function(directory,threshold=0){
  filename<-list.files(path=directory,pattern = "*.csv",recursive = F)
  #data_frame<-filename
  vector = numeric()
  for(i in filename){
    data_set1<-read.csv(file.path(directory,i),header=TRUE,sep=",")
    row_count<-nrow(data_set1[complete.cases(data_set1), ])
    if(row_count>threshold){
      cor_values<-cor(data_set1$sulfate,data_set1$nitrate,use = "complete.obs")
      #print(cor_values)
      vector <- c(vector,cor_values)
      #c(cor_values)
    }
  }
  return(vector)
}


  
  
pollutantmean("/Users/riyahazra/Desktop/specdata",5)
pollutantmean("/Users/riyahazra/Desktop/specdata", 70:72)
pollutantmean("/Users/riyahazra/Desktop/specdata", "nitrate", 23)





complete("/Users/riyahazra/Desktop/specdata", 1)
complete("/Users/riyahazra/Desktop/specdata", c(2, 4, 8, 10, 12))
complete("/Users/riyahazra/Desktop/specdata", 30:25)
complete("/Users/riyahazra/Desktop/specdata", 3)