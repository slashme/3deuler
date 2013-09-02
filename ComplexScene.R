# Load rgl library
require(rgl)
# Create a vector from -2π to 2π
re = (-10:10)*pi/5
# Create a vector from -2πi to 2πi
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
# Next step: use the technique alluded to in http://stackoverflow.com/questions/15717267/how-to-draw-parametric-3d-curve-with-smoothing-in-r to generate a parametric curve.
# segments3d(c(re,sinfunction(re),re*0.0)) doesn't work: need to generate an array
sinfunction = function(x) sin(x)
sincurve = cbind(re, sinfunction(re), re*0)

