#PSEUDOCODE
#1 Create complete function that takes a directory and id
#2 Take all files of directory and create a list of them
#3 Create an empty data frame (dat)
#4 Create column title for dat (id, nobs)
#5 Create a loop that goes through each file
#6 For each file, create a version with omitted na's
#7 Count the number of rows
#8 Push file id and number of rows into dat
#9 Print dat


complete<-function(directory,id=1:332){
  files_list <- list.files(directory, full.names=TRUE)   
  dat <- data.frame(id=numeric(0),nobs=numeric(0)) 
  for (i in id) {                                
    x<-na.omit(read.csv(files_list[i]))
    y<-nrow(x)
    add <- data.frame(id=i,nobs=y)
    dat<-rbind(dat,add)
  }
  dat
}