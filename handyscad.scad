/* HandySCAD
 * CC BY-SA 4.0
 */

$fn = 36; // seems a reasonable default

module cylinder_outer(h, d) {
    radius = d/2;
    fudge = 1/cos(180/$fn);
    cylinder(h=h, r=radius*fudge);
}

module cylinder_mid(h, d) {
    radius = d/2;
    fudge = (1+1/cos(180/$fn))/2;
    cylinder(h=h, r=radius*fudge);
}


module circle_outer(d) {
    radius = d/2;
    fudge = 1/cos(180/$fn);
    circle(r=radius*fudge);
}

module circle_mid(d) {
    radius = d/2;
    fudge = (1+1/cos(180/$fn))/2;
    circle(r=radius*fudge);
}


module handyround(r=3) {
    offset(r=r) offset(delta=-r) children();
}

module handyfillet(r=3) {
    offset(r=-r) offset(delta=r) children();
}

