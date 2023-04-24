df <- read.csv("admission.csv",skip = 1)

#Question 1

#Part A

df_ssc_bs <- df[ !is.na(df$SSC_OBT & df$NU_BS_TEST_MARKS ),]

#Removing Outliers

Q1_ssc <- quantile(df_ssc_bs$SSC_OBT, .25)
Q3_ssc <- quantile(df_ssc_bs$SSC_OBT, .75)
IQR_ssc <- IQR(df_ssc_bs$SSC_OBT)

Q1_bs <- quantile(df_ssc_bs$NU_BS_TEST_MARKS, .25)
Q3_bs <- quantile(df_ssc_bs$NU_BS_TEST_MARKS, .75)
IQR_bs <- IQR(df_ssc_bs$NU_BS_TEST_MARKS)

df_ssc_bs <- subset(df_ssc_bs, df_ssc_bs$SSC_OBT> (Q1_ssc - 1.5*IQR_ssc) & df_ssc_bs$SSC_OBT< (Q3_ssc + 1.5*IQR_ssc))
df_ssc_bs <- subset(df_ssc_bs, df_ssc_bs$NU_BS_TEST_MARKS> (Q1_bs - 1.5*IQR_bs) & df_ssc_bs$NU_BS_TEST_MARKS< (Q3_bs + 1.5*IQR_bs))

cor(df_ssc_bs$SSC_OBT,df_ssc_bs$NU_BS_TEST_MARKS)
#0.3733413

plot(head(df_ssc_bs$SSC_OBT,100),head(df_ssc_bs$NU_BS_TEST_MARKS,100),xlab = 'SSC Obtained',ylab = 'BS Test Marks',main = 'BS Marks against SSC Marks')
abline(lm(df_ssc_bs$NU_BS_TEST_MARKS ~ df_ssc_bs$SSC_OBT))

#There is a weak linear relation between the variables as shown by the graph.


#Part B

df_ssc_bba <- df[ !is.na(df$SSC_OBT & df$NU_BBA_TEST_MARKS ),]

#Removing Outliers

Q1_ssc <- quantile(df_ssc_bba$SSC_OBT, .25)
Q3_ssc <- quantile(df_ssc_bba$SSC_OBT, .75)
IQR_ssc <- IQR(df_ssc_bba$SSC_OBT)

Q1_bba <- quantile(df_ssc_bba$NU_BBA_TEST_MARKS, .25)
Q3_bba <- quantile(df_ssc_bba$NU_BBA_TEST_MARKS, .75)
IQR_bba <- IQR(df_ssc_bba$NU_BBA_TEST_MARKS)

df_ssc_bba <- subset(df_ssc_bba, df_ssc_bba$SSC_OBT> (Q1_ssc - 1.5*IQR_ssc) & df_ssc_bba$SSC_OBT< (Q3_ssc + 1.5*IQR_ssc))
df_ssc_bba <- subset(df_ssc_bba, df_ssc_bba$NU_BBA_TEST_MARKS> (Q1_bba - 1.5*IQR_bba) & df_ssc_bba$NU_BS_TEST_MARKS< (Q3_bba + 1.5*IQR_bba))


cor(df_ssc_bba$SSC_OBT , df_ssc_bba$NU_BBA_TEST_MARKS)
#0.2446122

plot(head(df_ssc_bba$SSC_OBT,60),head(df_ssc_bba$NU_BBA_TEST_MARKS,60),xlab = 'SSC Obtained',ylab = 'BBA Test Marks',main = 'BBA Marks against SSC Marks')
abline(lm(df_ssc_bba$NU_BBA_TEST_MARKS ~ df_ssc_bba$SSC_OBT))

#There is a very weak linear relation between the variables as shown by the graph.

#Part C

df_ssc_hssc <- df[ !is.na(df$SSC_OBT & df$HSSC_OBT ),]

#Removing Outliers

Q1_ssc <- quantile(df_ssc_hssc$SSC_OBT, .25)
Q3_ssc <- quantile(df_ssc_hssc$SSC_OBT, .75)
IQR_ssc <- IQR(df_ssc_hssc$SSC_OBT)

Q1_hssc <- quantile(df_ssc_hssc$HSSC_OBT, .25)
Q3_hssc <- quantile(df_ssc_hssc$HSSC_OBT, .75)
IQR_hssc <- IQR(df_ssc_hssc$HSSC_OBT)

df_ssc_hssc <- subset(df_ssc_hssc, df_ssc_hssc$SSC_OBT> (Q1_ssc - 1.5*IQR_ssc) & df_ssc_hssc$SSC_OBT< (Q3_ssc + 1.5*IQR_ssc))
df_ssc_hssc <- subset(df_ssc_hssc, df_ssc_hssc$HSSC_OBT> (Q1_hssc - 1.5*IQR_hssc) & df_ssc_hssc$HSSC_OBT< (Q3_hssc + 1.5*IQR_hssc))

cor(df_ssc_hssc$SSC_OBT,df_ssc_hssc$HSSC_OBT)
#0.3773993

plot(head(df_ssc_hssc$SSC_OBT,100),head(df_ssc_hssc$HSSC_OBT,100),xlab = 'SSC Obtained',ylab = 'HSSC Marks',main = 'HSSC Marks against SSC Marks')
abline(lm(df_ssc_hssc$HSSC_OBT ~ df_ssc_hssc$SSC_OBT))

#Weak Linear relation between variables as shown by the graph.

#<--------------------------------------------------------------------------->
#Question 2

#Part A

mean_ssc <- mean(df_ssc_bs$SSC_OBT)
mean_bs <- mean(df_ssc_bs$NU_BS_TEST_MARKS)

df_ssc_bs$SSC_OBT <- df_ssc_bs$SSC_OBT-mean_ssc
df_ssc_bs$NU_BS_TEST_MARKS <- df_ssc_bs$NU_BS_TEST_MARKS-mean_bs

plot(head(df_ssc_bs$SSC_OBT,600),head(df_ssc_bs$NU_BS_TEST_MARKS,600),xlab = 'SSC Obtained',ylab = 'BS Test Marks',main = 'Residual Plot of BS Marks against SSC Marks')

#Part B

mean_ssc <- mean(df_ssc_bba$SSC_OBT)
mean_bba <- mean(df_ssc_bba$NU_BBA_TEST_MARKS)

df_ssc_bba$SSC_OBT <- df_ssc_bba$SSC_OBT-mean_ssc
df_ssc_bba$NU_BBA_TEST_MARKS <- df_ssc_bba$NU_BBA_TEST_MARKS-mean_bba

plot(head(df_ssc_bba$SSC_OBT,600),head(df_ssc_bba$NU_BBA_TEST_MARKS,600),xlab = 'SSC Obtained',ylab = 'BS Test Marks',main = 'Residual Plot of BBA Marks against SSC Marks')

#Part C

mean_ssc <- mean(df_ssc_hssc$SSC_OBT)
mean_hssc <- mean(df_ssc_hssc$HSSC_OBT)

df_ssc_hssc$SSC_OBT <- df_ssc_hssc$SSC_OBT-mean_ssc
df_ssc_hssc$HSSC_OBT <- df_ssc_hssc$HSSC_OBT-mean_hssc

plot(head(df_ssc_hssc$SSC_OBT,600),head(df_ssc_hssc$HSSC_OBT,600),xlab = 'SSC Obtained',ylab = 'BS Test Marks',main = 'Residual Plot of HSSC Marks against SSC Marks')

#<--------------------------------------------------------------------------->
#Question 3

#Part A

model = lm( df_ssc_bs$NU_BS_TEST_MARKS ~ df_ssc_bs$SSC_OBT )
summary(model)$r.squared
#0.1393837

model_residual = sum(model$residuals^2)

res = df_ssc_bs$NU_BS_TEST_MARKS - mean(df_ssc_bs$NU_BS_TEST_MARKS)
m_residual = sum(res^2)

save_err =  m_residual - model_residual
save_err/m_residual
#0.1393837

#Part B

model = lm( df_ssc_bba$NU_BBA_TEST_MARKS ~ df_ssc_bba$SSC_OBT )
summary(model)$r.squared
#0.04341978

model_residual = sum(model$residuals^2)

res = df_ssc_bba$NU_BBA_TEST_MARKS - mean(df_ssc_bba$NU_BBA_TEST_MARKS)
m_residual = sum(res^2)

save_err =  m_residual - model_residual
save_err/m_residual
#0.04341978

#Part C

model = lm( df_ssc_hssc$HSSC_OBT ~ df_ssc_hssc$SSC_OBT )
summary(model)$r.squared
#0.1424302

model_residual = sum(model$residuals^2)

res = df_ssc_hssc$HSSC_OBT - mean(df_ssc_hssc$HSSC_OBT)
m_residual = sum(res^2)

save_err =  m_residual - model_residual
save_err/m_residual
#0.1424302



