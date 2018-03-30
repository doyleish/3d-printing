$fn=120;
difference(){
    cylinder(h=2, r=7.5);
    cylinder(h=2, r=5);
    translate([2,-10,0]) cube([10,20,2]);
}