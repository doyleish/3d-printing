bolt_distance=26;
m3=3.2;

b_t = 4;
b_w = 16;
b_l = 38;

hole_od = 12;
hole_id = 8.6;
hole_d = 8;

difference(){
    union(){
        difference(){
            cube([b_w,b_l,b_t]);
            translate([b_w/2,(b_l-bolt_distance)/2,0]){
                cylinder($fn=50, d=m3,h=b_t);
            }
            translate([b_w/2,(b_l+bolt_distance)/2,0]){
                cylinder($fn=50, d=m3,h=b_t);
            }
        }
        translate([b_w/2,b_l/2,b_t]){
            cylinder($fn=160, d=hole_od,h=hole_d);
        }
    }
    translate([b_w/2,b_l/2,0]){
        cylinder($fn=140, d=hole_id,h=hole_d+b_t);
    }
}