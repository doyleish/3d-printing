bolt_distance=26;
m3=3.2;

b_t = 3.5;
b_w = 16;
b_l = 38;

hole_od = 11.5;
hole_id = 8.6;
hole_h = 4.2;

socket_d = 5.3;

tube_od=4.1;

res = 120;

difference(){
    union(){
        difference(){
            cube([b_w,b_l,b_t]);
            translate([b_w/2,(b_l-bolt_distance)/2,0]){
                cylinder($fn=res, d=m3,h=b_t);
            }
            translate([b_w/2,(b_l+bolt_distance)/2,0]){
                cylinder($fn=res, d=m3,h=b_t);
            }
        }
        translate([b_w/2,b_l/2,b_t]){
            cylinder($fn=res, d=hole_od,h=hole_h);
        }
    }
    translate([b_w/2,b_l/2,0]){
        cylinder($fn=res, d=hole_id,h=socket_d);
    }
    translate([b_w/2,b_l/2,0]){
        cylinder($fn=res, d=tube_od,h=b_t+hole_h);
    }
}