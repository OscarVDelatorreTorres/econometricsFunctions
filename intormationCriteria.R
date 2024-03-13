# This is a funciton for the information criteria used the most in cross-sectional regression models and also some
# Time series, given the lm, lgm or similar R objetc.

# Dr. Oscar V. De la Torre Torres
# Version 1.0: March, 13, 2024.

akaike.crit=function(object){
  k=length(object$coefficients)
  llf=logLik(object)
  aic=(2*k)-(2*llf)
  return(aic)
}

schwartz.crit=function(object){
  k=length(object$coefficients)
  n=length(object$residuals)
  llf=logLik(object)
  
  bic=(log(n)*k)-(2*llf)
  return(bic)
}

hq.crit=function(object){
  k=length(object$coefficients)
  n=length(object$residuals)
  llf=logLik(object)
  
  hq=(-2*llf)+(2*(log(log(n))))
  return(hq)
}