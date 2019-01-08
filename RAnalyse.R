
B=data.frame(unique(A$Country))
length(which(is.na(A$PolterrorAM_PTS)=="TRUE"))
length(which(is.na(A$PolterrorSD_PTS)=="TRUE"))
C=data.frame(ifelse(is.na(A$PolterrorAM_PTS)=="TRUE",0,A$PolterrorAM_PTS))
D=data.frame()
for(i in seq(1,211)){
  D<-rbind(D,data.frame(sum(C[(1+50*(i-1)):(50*i),])/(50-length(which(C[1:50,]==0)))))
}
B<-cbind(B,D)
names(B)[1]<-"CountryName"
names(B)[2]<-"Average PolTerror"
