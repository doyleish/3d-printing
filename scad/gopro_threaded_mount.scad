// Hex nut
$fn=200;
nut_height=5.7;
l_nut=11.4;
s_nut=8.3;
base_width=30;

module hexagon(size, height) {
  boxWidth = size/1.7315;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
}



difference(){
    cylinder(d=base_width, h=10);
    hexagon(l_nut, 11.6);
    cylinder(d=15.4, h=2.2);
}
translate([0,0,2.2]) cylinder(d=30, h=0.01);

hull(){
    translate([0,0,10]) cylinder(d=base_width, h=0.01);
    translate([0,0,12]) cube([19,15,0.01],true);
}

translate([0,0,15]){
    translate([-9.5,0,5]) rotate([0,90,0]) {
        difference(){
            union(){
                cylinder(d=15, h=19);
                translate([0,-7.5,0]) cube([10,15,19]);
            }
            hexagon(s_nut, 7);
            cylinder(d=5.6, h=19);
            translate([0,0,8]) cube([16,15,3.35],true);
            translate([0,0,14.2]) cube([16,15,3.35],true);
        }
    }
}