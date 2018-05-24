difference(){
union(){
cube([40,80,1], true);
translate([-1, 80/4, 0]) rotate([0,90,0]) cylinder(h=1, r=3*80/4);
}
translate([0,80/4,-0.5]) cube([5,40,1]);
}