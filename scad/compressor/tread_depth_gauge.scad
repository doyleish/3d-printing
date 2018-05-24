// 0 to 8mm depth
$fn=200;

difference(){
    union(){
        difference(){
            cylinder(d=78, h=3);
            for(i=[0:8]){
                        rotate([0,0,i*180/8]) translate([32, -1, 2.5]) cube([6, 2, 0.5]);
            }
        }
        translate([4,0,0]){
            difference(){
                cylinder(d=70, h=8);
                for(i=[0:8]){
                    rotate([0,0,i*180/8]) translate([28, -1, 7.5]) cube([6, 2, 0.5]);
                }
            }
        }
    }
    translate([-39,-43,0]){
        cube([78, 39, 8]);
    }
    
}