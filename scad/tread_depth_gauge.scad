// 0 to 8mm depth
$fn=200;

difference(){
union(){
cylinder(d=78, h=3);
translate([4,0,0]) cylinder(d=70, h=8);
}
translate([-39,-39,0]) cube([78, 39, 8]);
}