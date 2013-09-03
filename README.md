3deuler
=======

Project aim:
Create an animation of Euler's equation in R using the rgl library,
following the discussion at [Wikipedia's Graphics Lab](https://en.wikipedia.org/wiki/Wikipedia:Graphics_Lab/Illustration_workshop#RfC_-_Visualization_of_exponential_function).

**Progress:**
- [x] Create a 3D surface of the exponentiation of complex numbers (`ComplexScene.R`)
- [x] Truncate the function to the -2π to 2π range
- [x] Draw a cosine wave on the surface
- [x] Animate the camera
- [&ensp;] Make the axes' ticks and labels be based on π,
  like [this](https://commons.wikimedia.org/wiki/File:Exponential_Function_%28Imag_Part%29.png)
- [&ensp;] Draw an exponential curve on the surface
- [&ensp;] Fade out the surface to hide the jagged edges from truncating it

**Instructions:**
* Install the packages on Ubuntu: `sudo apt-get install r-base r-cran-rgl`
* Start R: `R`
* Load the file that generates the complex exponential plot: `source("ComplexScene.R")`
* Quit R: `q()`
