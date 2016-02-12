
corr<-function(directory, threshold=0){
  files_list <- list.files(directory, full.names=TRUE)  
  corlist<-data.frame(Cor=numeric(0))
  answer <- numeric(0)
  id<-1:332
  for (i in id) {
    x<-na.omit(read.csv(files_list[i]))
    y<-nrow(x)
    x$Date <- NULL
    x$ID <- NULL
    if(y>threshold){
      z<-cor(x)
      answer[i]<-z[2]
    }
  }
  answer
}
