$fn=100;
difference(){
    hull(){
        cylinder(h=26, d=15);
        translate([18,0,0]) cylinder(h=26, d=3);
    }
    cylinder(h=24, d=6.05);
    cylinder(h=4, d=8.2);
}
translate([1.55,-3.025,24-11]) cube([1.5,6.05,11]);