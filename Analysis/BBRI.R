#LIBRARY
library(tseries)
library(forecast)
library(stats)
library(rugarch)
library(fGarch)
library(ggpubr)
library(zoo)
library(readxl)

#DATA
dataset=read_excel(file.choose())
head(dataset)

#MEMBUAT PLOT DATA
par(mfrow=c(1,1))
win.graph()
plotawal=ts.plot(y=dataset$BBRI.JK,col="blue",main="Plot Data Saham BBRI.JK",ylab='harga saham')

#UJI STASIONER ADF DATA ASLI
adf.test(dataset$BBRI.JK)         

#DIFFERENCING
dtrans1=as.matrix(diff(log(dataset$BBRI.JK),differences=1))
dtrans2=as.matrix(diff(log(dataset$BBRI.JK),differences=2))
dtrans3=as.matrix(diff(log(dataset$BBRI.JK),differences=3))
dtrans4=as.matrix(diff(log(dataset$BBRI.JK),differences=4))

#UJI STASIONER DATA DIFFERENCING
adf.test(dtrans1)
adf.test(dtrans2)
adf.test(dtrans3)
adf.test(dtrans4)

#MENAMPILKAN PLOT DATA DIFFERENCING
plot_d1=plot.zoo(dtrans1,col="blue",main="Plot data dtrans1")
plot_d2=plot.zoo(dtrans2,col="green",main="Plot data dtrans2")
plot_d3=plot.zoo(dtrans3,col="red",main="Plot data dtrans3")
plot_d4=plot.zoo(dtrans4,col="pink",main="Plot data dtrans4")

#IDENTIFIKASI MODEL ARIMA
par(mfrow=c(2,1))
acf(dtrans4, main="ACF dtrans4")
acf(dtrans4,lag=5,main="ACF dtrans4")
pacf(dtrans4)

#MODEL ARIMA
arima_terbaik =auto.arima(dataset$BBRI.JK,d=4, seasonal=FALSE,stepwise=FALSE)
summary(arima_terbaik) 

#DIAGNOSTIC CHECKING
residual=arima_terbaik$residuals			
tsdiag(arima_terbaik)
##Normalitas Residual
jarque.bera.test(residual)
##No Autokorelasi
par(mfrow=c(2,1))
acf(residual)
pacf(residual)
##Homoskedastisitas
par(mfrow=c(2,1))
acf(residual^2)
pacf(residual^2)


#FORECAST DENGAN METODE ARIMA
fc_arima=forecast(arima_terbaik)				
fc_arima

#ARIMA(5,4,0)-GARCH(1,1) MODEL--------------------------------------------------------------------
garch_spec=ugarchspec(mean.model = list(arima(dataset$BBRI.JK,order=c(5,4,0))),
                      variance.model=list(model="sGARCH"),
                      distribution.model="norm")
garch_fit=ugarchfit(spec=garch_spec,data=dataset$BBRI.JK,solver = 'hybrid')
garch_fit
garch_spec
coef(garch_fit)


#FORECAST 10 PERIODE KE DEPAN
FCAST=ugarchforecast(fitORspec = garch_fit,n.ahead=1)
FCAST

#model ARMA-GARCH
#mu 	= (intercept) ARMA
#ar1	= phi_1 atau parameter (AR(1))
#ma1 	= theta_1 atau parameter (MA(1))
#omega 	= (intercept) atau alpha_0 GARCH
#alpha1	= alpha_1 (GARCH(1) parameter of sigma_t^2)
#beta1	= beta_1 (GARCH(1) parameter of epsilon_t^2)
