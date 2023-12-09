cat("\014")
options(digits=4)
player_df=data.frame(Jump_Before_TP=
                       c(22,20,19,24,25,25,28,22,30,27,24,18,16,19,19,28,24,25,25,23)
        ,Jump_After_TP=c(24,22,19,22,28,26,28,24,30,29,25,20,17,18,18,28,26,27,27,24))
n=nrow(player_df)
Diff_jump=player_df$Jump_Before_TP-player_df$Jump_After_TP
player_df=cbind(player_df,Diff_jump)

Mean_Diff=sum(player_df$Diff_jump)/n
cat("\n")
print(player_df)
SD_Diff=sd(player_df$Diff_jump)
paired_t_test_Value=Mean_Diff/(SD_Diff/sqrt(n))

cat("\n\n Mean Difference id:",Mean_Diff)
cat("\n Standard deviation of Difference is",SD_Diff)
cat("\nNUmber of samples in Data Set:",n)
cat("\nDegree of freedom in samples:",n-1)
cat("\n\n Parired T-Test Value is",paired_t_test_Value)
cat("\n\n-----------------------\n")
cat(" T test Verfication   ")
cat("\n---------------------\n")
pt=t.test(player_df$Jump_Before_TP,player_df$Jump_After_TP,paired=TRUE)
print(pt)