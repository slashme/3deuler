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
# Open a 3D canvas
open3d()
# Plot a surface using the real-valued surface calculated above, coloured red, 50% transparent.  
# TODO: figure out how to set the scene so that you don't have to zoom in after this step.
surface3d(re,re,realsurf,color=c("red"),alpha=0.5)
# Add axes - note: tick length depends on the bounding box size, so at the moment, these axes look really bad.  Options: truncate the data, or somehow resize the bounding box.
axes3d()
axis3d("x",pos=c(0,0,0))
axis3d("y",pos=c(0,0,0))
labels=T
