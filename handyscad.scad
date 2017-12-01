/* HandySCAD
 * CC BY-SA 4.0
 */

$fn = 36; // seems a reasonable default

/*
 * https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/undersized_circular_objects
 */

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

/*
 * use morphology from https://github.com/openscad/scad-utils if these don't work
 */

module handyround(r=3) {
    offset(r=r) offset(delta=-r) children();
}

module handyfillet(r=3) {
    offset(r=-r) offset(delta=r) children();
}

/*
 * https://github.com/elmom/MCAD/blob/master/metric_fastners.scad but better
 */

module cap_bolt(dia,len) {
	e=1.5*dia;
	h1=1.25*dia;
    union() {
        cylinder_outer(h=len,d=dia);
        translate([0,0,-h1]) cylinder_outer(h=h1,d=e);
    }
}

module csk_bolt(dia,len) {
	h1=0.6*dia;
	h2=len;
    union() {
        cylinder_outer(h=h2,d=dia);
        cylinder(h=h1,r1=dia,d2=dia);
    }
}

module hex_bolt(dia,len) {
	e=1.8*dia;
	k=0.7*dia;
	c=0.2*dia;
	union() {
		cylinder_outer(h=k,d=e,$fn=6);
        cylinder_outer(h=len,d=dia);
	}
}

module hex_nut(dia) {
	m=0.8*dia;
	e=1.8*dia;
	c=0.2*dia;
	difference() {
		cylinder_outer(h=m,d=e,$fn=6);
		translate([0,0,-m/2]) cylinder_outer(h=m*2,d=dia);
	}
}

module flat_washer(dia) {
	t=0.1*dia;
	difference() {
		cylinder_outer(h=t,r=dia);
		translate([0,0,-t/2]) cylinder_outer(h=t*2,d=dia);
	}
}

