3deuler
=======

Project aim:
Create an animation of Euler's equation in R using the rgl library,
following the discussion at [Wikipedia's Graphics Lab](https://en.wikipedia.org/wiki/Wikipedia:Graphics_Lab/Illustration_workshop#RfC_-_Visualization_of_exponential_function).

**Progress so far:**
* created a 3D surface of the exponentiation of complex numbers (`ComplexScene.R`)

**Todo:**
* Figure out the best way to deal with the exponentially growing values of the function
    * Option 1: truncate the function to the -2π to 2π range
    * Option 2: scale the z axis down to compress the range of values
* Make the axes' ticks and labels be based on π,
  like [this](https://commons.wikimedia.org/wiki/File:Exponential_Function_%28Imag_Part%29.png)
* Draw a cosine wave and an exponential curve on the surface
  (using the technique alluded to [here](http://stackoverflow.com/q/15717267/))

**Instructions:**
* Install the packages on Ubuntu: `sudo apt-get install r-base r-cran-rgl`
* Start R: `R`
* Load the file that generates the complex exponential plot: `source("ComplexScene.R")`
* Quit R: `q()`
