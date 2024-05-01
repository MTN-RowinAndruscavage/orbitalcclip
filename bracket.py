# import openscad
from solid2 import cube, sphere, cylinder, set_global_fn

# set the number of faces for curved shapes
set_global_fn(100)

# create spherical section
osphere = sphere(53.5).translate(0,0,6)
isphere = sphere(51.8).translate(0,0,6)
cut = cube(200,200,150.2).translate(-100,-100,-100)
base = osphere - isphere - cut

# create reusable screw hole function
def screw_hole():
    body = cylinder(h=200, r=11.4)
    squarefer = cube(21, 21, 202).translate(-10.5,-10.5,-1)
    body = body & squarefer
    cutout1 = cube(21, 100, 100).translate(-10.5,-3.5,0)
    cutout2 = cube(26, 100, 100).translate(-13,19,0)
    topcrop = cube(100,100, 100).translate(-50,-104,58)
    return body + cutout1 + cutout2 + topcrop + topcrop.mirror(0,1,0)

base -= screw_hole()

interiorsup = cube(16, 2, 10).translate(10, -16, 50.5)
interiorsup = interiorsup * osphere

base = base + interiorsup + interiorsup.mirror(1,0,0)


bufcyl = cylinder(h=200, r=15)
bufcub = cube(28, 100, 100).translate(-14,0,0)
bufhead = cube(12, 14, 58).translate(-6, -24.4, 0)
bufrung = cube(8, 12, 58).translate(-4, -28, 0)
cylholex = cylinder(h=26, r=4).rotate(0,90,0).translate(-13,0,52)
cylholey = cylinder(h=26, r=4).rotate(0,90,90).translate(0,-13,52)

buf = bufcyl + bufcub + bufhead + bufhead.rotate(0,0,90) + bufhead.rotate(0,0,-90)
cut2 = cube(200,200,154).translate(-100,-100,-100)
buf -= screw_hole() + cut2 + cylholex + cylholey + bufrung + bufrung.rotate(0,0,90) + bufrung.rotate(0,0,-90)

base += buf & osphere

# create model
model = base.translate(0,0,-50)

# save your model for use in OpenSCAD
model.save_as_scad()
