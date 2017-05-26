## HandySCAD

A collection of stuff I use in OpenSCAD.

### Correct Sized Circles and Cylinders

https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/undersized_circular_objects

Requires `$fn` to be defined.

Usage:

~~~
cylinder_outer(height, diameter)
cylinder_mid(height, diameter)
circle_outer(diameter)
circle_mid(diameter)
~~~

Example:

~~~
$fn = 36;

difference() {
    cube([10,10,5]);
    translate([5,5,-1]) cylinder_outer(7, 5);
}
~~~

### 2D Fillets and Rounds

https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/The_OpenSCAD_Language#offset

Looks better with higher `$fn` than default.

Usage:

~~~
handyround(radius) 
handyfillet(radius)
~~~

Example:

~~~
$fn=36;

difference() {
    handyround() square([20,20]);
    translate([5,5]) handyround(2) square([10,10]);
}
~~~

If these don't work, Morphology from [scad-utils](https://github.com/openscad/scad-utils) has a different one.

## License

Creative Commons Attribution-ShareAlike 4.0 International

https://creativecommons.org/licenses/by-sa/4.0/

## Author

Jamie Bainbridge - jamie.bainbridge@gmail.com

