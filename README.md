# orbital c clip
Replacement C clip for a Sachtler Flowtech Aktiv10 orbital mount

These things are easy to lose.  Here's a replacement for 3D printing created from eyeballing the dimensions.

If you want to make any adjustments to the model size/shape, here's the pipeline for recreating the .stl :

## Installation on Debian / Ubuntu / WSL

    sudo apt install openscad
    pip3 install solidpython2

## Updating the .stl

After making edits / adjustments to bracket.py, run:

    python bracket.py
    openscad bracket.scad

In openscad, press F6 to render, then F7 to export to .stl

Open your .stl in PrusaSlicer or whatever and enable supports before generating gcode for your 3D printer.

# CAUTION!

Test your orbital mount thoroughly before trusting your expensive equipment on it!  From my own testing it appears that the bowl connector should release brake tension but still stay attached if overtightened / overtorqued.  

However during some earlier iterations of this part I did run into instances where the bowl connector could eject completely during aggressive movement which would send your payload tumbling!
