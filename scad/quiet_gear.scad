$fn = 120;
h = 3;
tn = 24; //number of teeth
tw = 4;
pi = 3.1415926535897932384626433832795;

shaft_d = 5;
gd = 1.75*tw*tn/pi;

male = true; // true for male, false for female

difference(){
    if (male){
        union(){
            cylinder(d=gd, h=h);
            
            for (i = [0:1:tn]) {
                rotate([0,0,360*i/tn]) translate([gd/2,0,0]) cylinder(d=tw*0.9, h=h, $fn=50);
            }
        }
    }
    else {
        difference(){
            cylinder(d=gd, h=h);
            
            for (i = [0:1:tn]) {
                rotate([0,0,360*i/tn]) translate([gd/2,0,0]) cylinder(d=tw*1.1, h=h, $fn=50);
            }
        }
    }
    cylinder(d=shaft_d, h=h);
    for (i = [0:1:6]) {
        rotate([0,0,360*i/6]) translate([(gd/4)+(shaft_d/4),0,0]) cylinder(d=(gd/5)+(shaft_d/8), h=h);
    }
}