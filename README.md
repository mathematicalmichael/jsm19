[![Binder](https://mybinder.org/badge_logo.svg)](https://gke.mybinder.org/v2/gh/mathematicalmichael/jsm19/master)

# JSM 2019 Poster Presentation

# Beamer Poster Theme
The dependencies can be found in `/binder/apt.txt` and information about the theme is at [poster_cse](https://github.com/mathematicalmichael/poster_cse/blob/master/README.md).
This is a work in progress. Font dependencies are Google Raleway and Lato. 


The files here began as copies of that [repository](https://github.com/mathematicalmichael/poster_cse). 

# Generating Poster-Quality Images
All of the images are generated in the `.ipynb` file. Fonts were easily visible. 

# Building the Poster
Run `make` in terminal. [WIP]: Binder badge

# Find fonts
`mtxrun --script fonts --list --all | grep "fontname"` to search for available fonts on system.

Specify these in `beamerthemegemini.sty`.
