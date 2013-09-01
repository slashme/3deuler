re = (-10:10)*pi/5
im = re*1i
f <- function(re,im) exp(re+im)
complexsurf=outer(re,im,f)
realsurf=Re(complexsurf)
open3d()
surface3d(re,re,realsurf,color=c("red"),alpha=0.5)
