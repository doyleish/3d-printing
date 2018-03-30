hole_d=5.5;
hole_h=9.3;
$fn=200;

difference(){
    union(){
        cylinder(h=1, d=9.5);
        translate([0,0,1]) cylinder(h=hole_h*.25, d=hole_d);
        translate([-2.5,-0.5,1+hole_h*.25]) cube([5,1,1]);
    }
    cylinder(h=2+hole_h*.25, d=3.8);
    translate([-0.6,-3,hole_h*.25]) cube([1.2,6,10]);
}