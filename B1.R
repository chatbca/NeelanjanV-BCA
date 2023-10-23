cat("\014")
vector<-c(4,3,0,5,2,9,4,5)
mean_value<-sum(vector)/length(vector)
cat("Mean:",mean_value)
sorted_vector<-sort(vector)
n<-length(sorted_vector)
n1_index<-n/2
n2_index<-n/2+1 
n1<-sorted_vector[floor(n1_index)]
n2<-sorted_vector[floor(n2_index)]
median_value<-1/2*(n1+n2)
cat("\nMedian:",median_value)
mode_value<-3*median_value-2*mean_value
cat("\nMode:",mode_value)
range_value<-max(vector)-min(vector)
cat("\n\nRange:",range_value)
per_35<-(35*(length(vector)+1)/100)
cat("\n\n35th percentile",per_35)
per_78<-(78*(length(vector)+1)/100)
cat("\n78th percentile",per_78)
variance_value<-sum((vector-mean_value)^2)/length(vector)
cat("\n\nVarience",variance_value)
std_deviation<-sqrt(variance_value)
cat("\nStandard deviation",std_deviation)
z_scores<-(vector-mean_value)/std_deviation
cat("\nZ-scores:",z_scores)
q1_index<-(n+1)/4
q3_index<-3*((n+1)/4)
q1<-sorted_vector[floor(q1_index)]
q3<-sorted_vector[floor(q3_index)]
iqr<-q3-q1
cat("\n\nInterquratile Range->",iqr)
