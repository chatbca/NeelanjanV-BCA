cat("\014")
Upper_Limit=240
Lower_Limit=200
prob_Density=1/(Upper_Limit-Lower_Limit)
Prob_Mean=(Upper_Limit-Lower_Limit)/2
Prob_SD=sqrt(((Upper_Limit-Lower_Limit)^2)/12)
cat("Probabiltiy Density:",prob_Density)
cat("\n Mean of Probability:",Prob_Mean)
cat("\n Standard Deviation:",Prob_SD)

X_value=230
Prob=(Upper_Limit-X_value)/(Upper_Limit-Lower_Limit)
cat("\n\n(i).p(X>230)=",Prob,"OR",(Prob*100),"%")

d_Value=220
c_Value=205
Prob=(d_Value-c_Value)/(Upper_Limit-Lower_Limit)
cat("\n\n(ii).p(205<=X<=220)=",Prob,"OR",(Prob*100),"%")
