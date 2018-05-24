// 0 to 8mm depth
$fn=200;
depth=8;

difference(){
    union(){
        hull(){
            for(i=[0:$fn]){
                rotate([0,0,i*180/$fn]) translate([40+i*(depth/$fn), 0, 0]) cube([0.001, 0.001, 3]);
            }
        }
        difference(){
            cylinder(r=40, h=8);
            for(i=[0:depth]){
                rotate([0,0,i*180/depth]) translate([32, -0.5, 7.5]) cube([6, 1, 0.5]);
            }
        }
    }
    translate([-50,-100,0]){
        cube([100, 100, 100]);
    }
    
}
translate([-25,6,8]) linear_extrude(0.8) text("@rdoyle");