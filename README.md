## HandySCAD

A collection of stuff I use in OpenSCAD.

### Correct Sized Circles and Cylinders

https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/undersized_circular_objects

You can set or pass `$fn` as per usual for cylinders.

Usage:

~~~
cylinder_outer(h,d)
cylinder_mid(h,d)
circle_outer(d)
circle_mid(d)
~~~

Example:

~~~
x = 10;
y = x;
z = x;

difference() {
    cube([x,y,x]);
    translate([x/2,y/2,-1]) cylinder_outer(h=x/2+2,d=5);
}
~~~

### 2D Fillets and Rounds

https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/The_OpenSCAD_Language#offset

Looks better with higher `$fn` than default.

Usage:

~~~
handyround(r=3) 
handyfillet(r=3)
~~~

Example:

~~~
x = 10;
y = x;

difference() {
    handyround() square([x*2,y*2]);
    translate([x/2,y/2]) handyround(2) square([x,y]);
}
~~~

If these don't work, Morphology from [scad-utils](https://github.com/openscad/scad-utils) has a different one.

### Metric Fasteners

https://github.com/elmom/MCAD/blob/master/metric_fastners.scad

These from MCAD but use `cylinder_outer()` for more accurate sizing, no chamfer, corrected a few bugs.

~~~
cap_bolt(dia,len); // socket cap bolt
csk_bold(dia,len); // countersunk bolt
hex_bolt(dia,len);
hex_nut(dia);
flat_washer(dia);
~~~

## License

Creative Commons Attribution-ShareAlike 4.0 International

https://creativecommons.org/licenses/by-sa/4.0/

## Author

Jamie Bainbridge - jamie.bainbridge@gmail.com

