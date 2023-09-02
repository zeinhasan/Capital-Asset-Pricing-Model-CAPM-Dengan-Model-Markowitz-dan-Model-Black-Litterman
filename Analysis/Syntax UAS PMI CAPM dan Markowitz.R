
install.packages("PerformanceAnalytics")
install.packages("xts")
install.packages("writexl")
library(xts)
library(PerformanceAnalytics)
library(openxlsx)
library(readxl)
library(writexl)
data=read.delim("clipboard")
str(data)
data$Date = as.Date(data$Date,format="%Y-%m-%d")
data=xts(data[,2:12],order.by = data[,1])
data


#return
returnBBCA=na.omit(diff(data$BBCA.JK)/lag(data$BBCA.JK))
returnBBRI=na.omit(diff(data$BBRI.JK)/lag(data$BBRI.JK))
returnBMRI=na.omit(diff(data$BMRI.JK)/lag(data$BMRI.JK))
returnBYAN=na.omit(diff(data$BYAN.JK)/lag(data$BYAN.JK))
returnTLKM=na.omit(diff(data$TLKM.JK)/lag(data$TLKM.JK))
returnASII=na.omit(diff(data$ASII.JK)/lag(data$ASII.JK))
returnTPIA=na.omit(diff(data$TPIA.JK)/lag(data$TPIA.JK))
returnBBNI=na.omit(diff(data$BBNI.JK)/lag(data$BBNI.JK))
returnUNVR=na.omit(diff(data$UNVR.JK)/lag(data$UNVR.JK))
returnICBP=na.omit(diff(data$ICBP.JK)/lag(data$ICBP.JK))
returnLQ45=na.omit(diff(data$IDX.LQ45)/lag(data$IDX.LQ45))
#Expected Return
meanreturnBBCA=mean(returnBBCA$BBCA.JK)
meanreturnBBRI=mean(returnBBRI$BBRI.JK)
meanreturnBMRI=mean(returnBMRI$BMRI.JK)
meanreturnBYAN=mean(returnBYAN$BYAN.JK)
meanreturnTLKM=mean(returnTLKM$TLKM.JK)
meanreturnASII=mean(returnASII$ASII.JK)
meanreturnTPIA=mean(returnTPIA$TPIA.JK)
meanreturnBBNI=mean(returnBBNI$BBNI.JK)
meanreturnUNVR=mean(returnUNVR$UNVR.JK)
meanreturnICBP=mean(returnICBP$ICBP.JK)
meanreturnLQ45=mean(returnLQ45$IDX.LQ45)

#rifk free rate
birate=read.delim("clipboard")
biratemean=mean(birate$BI.7Day.RR)/100
rf=biratemean/252
rf
##BBCA
summary(lm(data$IDX.LQ45[-1,]~returnBBCA$BBCA.JK))
betaBBCA=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnBBCA$BBCA.JK)
alphaBBCA=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnBBCA$BBCA.JK)
ExpectedRaBBCA=rf+betaBBCA*(meanreturnBBCA-rf)

##BBRI
summary(lm(data$IDX.LQ45[-1,]~returnBBRI$BBRI.JK))
betaBBRI=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnBBRI$BBRI.JK)
alphaBBRI=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnBBRI$BBRI.JK)
ExpectedRaBBRI=rf+betaBBRI*(meanreturnBBRI-rf)

##BMRI
summary(lm(data$IDX.LQ45[-1,]~returnBMRI$BMRI.JK))
betaBMRI=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnBMRI$BMRI.JK)
alphaBMRI=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnBMRI$BMRI.JK)
ExpectedRaBMRI=rf+betaBMRI*(meanreturnBMRI-rf)


##BYAN
summary(lm(data$IDX.LQ45[-1,]~returnBYAN$BYAN.JK))
betaBYAN=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnBYAN$BYAN.JK)
alphaBYAN=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnBYAN$BYAN.JK)
ExpectedRaBYAN=rf+betaBYAN*(meanreturnBYAN-rf)

##TLKM
summary(lm(data$IDX.LQ45[-1,]~returnTLKM$TLKM.JK))
betaTLKM=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnTLKM$TLKM.JK)
alphaTLKM=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnTLKM$TLKM.JK)
ExpectedRaTLKM=rf+betaTLKM*(meanreturnTLKM-rf)

##ASII
summary(lm(data$IDX.LQ45[-1,]~returnASII$ASII.JK))
betaASII=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnASII$ASII.JK)
alphaASII=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnASII$ASII.JK)
ExpectedRaASII=rf+betaASII*(meanreturnASII-rf)

##TPIA
summary(lm(data$IDX.LQ45[-1,]~returnTPIA$TPIA.JK))
betaTPIA=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnTPIA$TPIA.JK)
alphaTPIA=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnTPIA$TPIA.JK)
ExpectedRaTPIA=rf+betaTPIA*(meanreturnTPIA-rf)

##BBNI
summary(lm(data$IDX.LQ45[-1,]~returnBBNI$BBNI.JK))
betaBBNI=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnBBNI$BBNI.JK)
alphaBBNI=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnBBNI$BBNI.JK)
ExpectedRaBBNI=rf+betaBBNI*(meanreturnBBNI-rf)

##UNVR
summary(lm(data$IDX.LQ45[-1,]~returnUNVR$UNVR.JK))
betaUNVR=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnUNVR$UNVR.JK)
alphaUNVR=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnUNVR$UNVR.JK)
ExpectedRaUNVR=rf+betaUNVR*(meanreturnUNVR-rf)

##BBNI
summary(lm(data$IDX.LQ45[-1,]~returnICBP$ICBP.JK))
betaICBP=CAPM.beta(Ra=returnLQ45$IDX.LQ45,Rb=returnICBP$ICBP.JK)
alphaICBP=CAPM.alpha(Ra=data$IDX.LQ45[-1,],Rb=returnICBP$ICBP.JK)
ExpectedRaICBP=rf+betaBBNI*(meanreturnICBP-rf)


########## MARKOWITZ #############

library(plotly) # To create interactive charts
library(timetk) # To manipulate the data series
library(tibble)

##Make data frame
ret = data.frame(returnBBCA$BBCA.JK, returnBBRI$BBRI.JK, returnBMRI$BMRI.JK, 
                 returnBYAN$BYAN.JK, returnASII$ASII.JK,
                 returnTPIA$TPIA.JK, returnBBNI$BBNI.JK)

# Mean Return
mean_ret <- colMeans(ret)
print(round(mean_ret, 5))

# Covar return
cov_mat <- cov(ret)
print(round(cov_mat,5))

# Random Unif
wts <- runif(n = 7)
print(wts)
print(sum(wts))

wts <- wts/sum(wts)
print(wts)
print(sum(wts))

# Port Return
port_returns <- (sum(wts*mean_ret))
port_returns

# Port Risk
port_risk <- sqrt(t(wts) %*% (cov_mat %*% wts))
print(port_risk)

# Sharpe Ratio
sharpe_ratio <- port_returns/port_risk
print(sharpe_ratio)

# Simulate 
num_port <- 100000

# Creating a matrix to store the weights

all_wts <- matrix(nrow = num_port,ncol = 7)

# Creating an empty vector to store
# Portfolio returns

port_returns <- vector('numeric', length = num_port)

# Creating an empty vector to store
# Portfolio Standard deviation

port_risk <- vector('numeric', length = num_port)

# Creating an empty vector to store
# Portfolio Sharpe Ratio

sharpe_ratio <- vector('numeric', length = num_port)

# Iterate
for (i in seq_along(port_returns)) {
  
  wts <- runif(n=7)
  wts <- wts/sum(wts)
  
  # Storing weight in the matrix
  all_wts[i,] <- wts
  
  # Portfolio returns
  port_ret <- sum(wts * mean_ret)
  port_ret <- ((port_ret + 1)^52) - 1
  # Storing Portfolio Returns values
  port_returns[i] <- port_ret
  
  
  # Creating and storing portfolio risk
  port_sd <- sqrt(t(wts) %*% (cov_mat  %*% wts))
  port_risk[i] <- port_sd
  
  # Creating and storing Portfolio Sharpe Ratios
  # Assuming 0% Risk free rate
  
  sr <- port_ret/port_sd
  sharpe_ratio[i] <- sr
  
}


# Storing the values in the table
portfolio_values <- tibble(Return = port_returns, Risk = port_risk, SharpeRatio = sharpe_ratio)

# Converting matrix to a tibble and changing column names
all_wts <- tk_tbl(all_wts)

colnames(all_wts) <- colnames(ret)

# Combing all the values together
portfolio_values <- tk_tbl(cbind(all_wts, portfolio_values))

portfolio_values = portfolio_values[order(portfolio_values$Return, decreasing = T),]

min_var <- portfolio_values[which.min(portfolio_values$Risk),]
max_sr <- portfolio_values[which.max(portfolio_values$SharpeRatio),]

#####
win.graph()
portfolio_values %>% ggplot(aes(x = Risk, y = Return, color = SharpeRatio))+geom_point()+theme_classic() + scale_y_continuous(labels = scales::percent) +scale_x_continuous(labels = scales::percent) +
  labs(x = 'Annualized Risk', y = 'Annualized Returns', title = "Portfolio Optimization & Efficient Frontier") +
  geom_point(aes(x = Risk,y = Return), data = min_var, color = 'red') +
  geom_point(aes(x = Risk, y = Return), data = max_sr, color = 'red')


head(portfolio_values)


