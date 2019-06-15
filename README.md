[![Binder](https://mybinder.org/badge_logo.svg)](https://gke.mybinder.org/v2/gh/mathematicalmichael/jsm19/master?urlpath=/lab)

# JSM 2019 Poster Presentation

# Beamer Poster Theme
The dependencies can be found in `/binder/apt.txt` and information about the theme is at [poster_cse](https://github.com/mathematicalmichael/poster_cse/blob/master/README.md).
This is a work in progress. Font dependencies are Google Raleway and ~~Lato~~ cormorantgaramond. May vary by machine. Change these in the `.sty` file.


The files here began as copies of that [repository](https://github.com/mathematicalmichael/poster_cse). 

# Generating Poster-Quality Images
All of the images are generated in the `.ipynb` file. Fonts were easily visible. 

# Building the Poster
Run `make` in terminal. [WIP]: Binder badge

# Find fonts
`mtxrun --script fonts --list --all | grep "fontname"` to search for available fonts on system.

Specify these in `beamerthemegemini.sty`.

# Environment
Jupyterlab will run when you click the binder link. Make sure you open Terminal and run

`git config user.name Username`

`git config user.email user@mail.com` 


In order to be able to commit changes and push them back to GitHub. You can use the Git interface on the left panel for visual commits/staging. 

The binder environment expires after ten minutes of inactivity, so do not lapse if you make changes. 

# Building the Poster
Run

`make`

to build the poster and run 

`make clean`

to get rid of the temporary cache files. 
