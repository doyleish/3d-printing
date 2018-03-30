$fn=200;
thiccness=4;
led_count=16;
od=44.4;
id=31.8;
led_od=3.8;

pi = 3.1415926535897932384626433832795;
difference(){
    difference(){
        union(){ // ring + pylons
            difference(){ // ring
                cylinder(h=thiccness*2, d=od);
                cylinder(h=thiccness*2, d=id);
            }
            for (i = [0:1:3]) { //pylons
                rotate([0,0,360*i/3]) translate([id/2,0,0]) cylinder(d=led_od*1.25, h=thiccness*2);
            }
        }
        for (i = [0:1:led_count]) { // led holes
            rotate([0,0,360*i/led_count]) translate([(od+id)/4,0,0]) cylinder(d=led_od, h=thiccness*2, $fn=60);
        }
    }
    translate([0,0,thiccness]) difference(){ //top-ring cutout
        cylinder(h=thiccness*2, d=od);
        cylinder(h=thiccness*2, d=id);
    }
}