$fn=100;
xtw=15.6;
xth=7.9;
difference(){
    cube([70,45,17]);
    translate([1.5,1.5,0]) cube([67,42,15.5]);
    translate([70/2,45/2,0]) cylinder(h=17, d=8.2);
    translate([(70/2)+11.55-(1.5/2),45/2,0]) cube([1.5,3,17*2], true);
    translate([0,45/2,17/2]) cube([4,xtw,xth],true);
    translate([70,45/2,17/2]) cube([4,xtw,xth],true);
}
