/* HandySCAD
 * CC BY-SA 4.0
 */

module cylinder_outer(height, diameter, fn=$fn) {
    radius = diameter/2;
    fudge = 1/cos(180/fn);
    cylinder(h=height, r=radius*fudge, $fn=fn);
}

module cylinder_mid(height, diameter, fn=$fn) {
    radius = diameter/2;
    fudge = (1+1/cos(180/fn))/2;
    cylinder(h=height, r=radius*fudge, $fn=fn);
}


module circle_outer(diameter, fn=$fn) {
    radius = diameter/2;
    fudge = 1/cos(180/fn);
    circle(r=radius*fudge, $fn=fn);
}

module circle_mid(diameter, fn=$fn) {
    radius = diameter/2;
     fudge = (1+1/cos(180/fn))/2;
     circle(r=radius*fudge, $fn=fn);
}


module handyround(r=3) {
    offset(r=r) offset(delta=-r) children();
}

module handyfillet(r=3) {
    offset(r=-r) offset(delta=r) children();
}

