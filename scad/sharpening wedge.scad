angle = 20;

width = 30;
length = 20*1.5;

height = tan(angle) * length;
union(){
    cube([width,10,2]);
    cube([width,3,height]);
    translate([0,10,0]) hull(){
        cube([width,0.0001,height]);
        translate([0,length,0]) cube([width,0.0001,0.0001]);
    }
}