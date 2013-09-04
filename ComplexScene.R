# Load rgl library
require(rgl)
# Create a vector ranging from -2π to 2π in steps of π/50
re <- seq(from=-2*pi, to=2*pi, by=pi/50)
im <- re

## Create a vector ranging from -2πi to 2πi in steps of πi/50
#im <- re*1i

## Don't need to define this in terms of complex numbers: use trig instead.
## Define the exponential function on the sum of the two vectors
#f <- function(re,im) exp(re+im)
## Create a square matrix with the values of the function over the domain of the two vectors
#complexsurf<-outer(re,im,f)
## Create a square matrix containing the real value of the complex surface
#realsurf<-Re(complexsurf)

# Define the trig function on the sum of the two vectors
f <- function(re,im) exp(re)*cos(im)
# Create a square matrix with the values of the function over the domain of the two vectors
realsurf<-outer(re,im,f)
realsurftrunc <- realsurf

# Truncate the matrix
realsurftrunc[(realsurftrunc < -10) | (realsurftrunc > 10)] <- NA

#Keep a less-truncated version to hide the truncation effect.
realsurf[(realsurf < -100) | (realsurf > 100)] <- NA

# Open a 3D canvas
open3d()
# Plot a surface using the real-valued surface calculated above, coloured red, 20% transparent.  
surface3d(re,re,realsurftrunc,color=c("red"),alpha=0.8)
# Add axes
# axes3d()
axis3d("x",pos=c(0,0,0))
axis3d("y",pos=c(0,0,0))
labels<-T

# Draw parametric curve
cosfunction <- function(x) cos(x)
coscurve <- cbind(re*0, re, cosfunction(re))
plot3d(coscurve,type="l", lwd=5, col=c("Navy"), add=TRUE)

# Add the surface again so that the truncation doesn't show.
surface3d(re,re,realsurf,color=c("red"),alpha=0.8, add=TRUE)

#Set suitable view
par3d(zoom=0.05)

# Rotate the scene a bit
#M <- par3d("userMatrix")
#play3d( par3dinterp( userMatrix=list(M,rotate3d(M, pi/2, 1, 0, 0), rotate3d(M, pi/2, 0, 1, 0) ) ), duration=10 )

# Will need sin later...
# sinfunction <- function(x) sin(x)
# sincurve <- cbind(re*0, re, sinfunction(re))
# segments3d(sincurve[1:20,])

