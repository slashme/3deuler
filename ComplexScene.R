# Load rgl library
require(rgl)
# Create a vector ranging from -2π to 2π in steps of π/5
re = seq(from=-2*pi, to=2*pi, by=pi/5)
# Create a vector ranging from -2πi to 2πi in steps of πi/5
im = re*1i
# Define the exponential function on the sum of the two vectors
f <- function(re,im) exp(re+im)
# Create a square matrix with the values of the function over the domain of the two vectors
complexsurf=outer(re,im,f)
# Create a square matrix containing the real value of the complex surface
realsurf=Re(complexsurf)
# Truncate the matrix
realsurf[(realsurf < -10)] = NA
realsurf[(realsurf >  10)] = NA
#Temporary:
# realsurf[(realsurf >  0)] = NA
# Open a 3D canvas
open3d()
# Plot a surface using the real-valued surface calculated above, coloured red, 50% transparent.  
# TODO: figure out how to set the scene so that you don't have to zoom in after this step.
surface3d(re,re,realsurf,color=c("red"),alpha=0.5)
# Add axes
# axes3d()
axis3d("x",pos=c(0,0,0))
axis3d("y",pos=c(0,0,0))
labels=T
# Draw parametric curve
cosfunction = function(x) cos(x)
coscurve = cbind(re*0, re, cosfunction(re))
plot3d(coscurve[1:20,],type="l", lwd=5, add=TRUE)
# segments3d(coscurve[1:20,],nc=3,byrow=TRUE)
# Will need sin later...
# sinfunction = function(x) sin(x)
# sincurve = cbind(re*0, re, sinfunction(re))
# segments3d(sincurve[1:20,])
