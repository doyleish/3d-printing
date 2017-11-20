//bracket dimensions
// slot dimensions
res=120;

bracket_w = 38;
bracket_t = 4.3;
bracket_l = 42;

slot_w = 11.7;
slot_cutout=10.6;
slot_d = 12;

sensor_bracket_w = 25;
sensor_bracket_l = 8;
sensor_hole = 11.9;

m3=3.3;
m3_alt=3.2;
bolt_sep1 = 12.85;
bolt_sep2 = 22;

// bottom plate
difference(){
    cube([bracket_w,bracket_l,bracket_t]);
    translate([bracket_w/2,slot_d,0]) cylinder($fn=res, h=bracket_t, d=slot_w);
    translate([bracket_w/2-slot_cutout/2,0,0]) cube([slot_cutout,slot_d,bracket_t]);
    translate([bracket_w/2-bolt_sep2/2,slot_d-bolt_sep1/2,0]) cylinder($fn=res, h=bracket_t, d=m3);
    translate([bracket_w/2-bolt_sep2/2,slot_d+bolt_sep1/2,0]) cylinder($fn=res, h=bracket_t, d=m3);
    translate([bracket_w/2+bolt_sep2/2,slot_d-bolt_sep1/2,0]) cylinder($fn=res, h=bracket_t, d=m3);
    translate([bracket_w/2+bolt_sep2/2,slot_d+bolt_sep1/2,0]) cylinder($fn=res, h=bracket_t, d=m3);
}

//fan bracket
translate([3,0,bracket_t]){
    rotate([0,-90,0]){
        difference(){
            cube([5,42,3]);
            translate([m3/2,5,0]) cylinder($fn=res, h=bracket_t, d=m3_alt);
            translate([m3/2,42-5,0]) cylinder($fn=res, h=bracket_t, d=m3_alt);
        }
    }
}

// sensor bracket
translate([bracket_w/2-sensor_bracket_w/2,bracket_l,bracket_t]){
    rotate([90,0,0]){
        difference(){
            cube([sensor_bracket_w,30,sensor_bracket_l]);
            translate([3,13,0]) cylinder($fn=res, h=sensor_bracket_l, d=m3);
            translate([sensor_bracket_w-3,13,0]) cylinder($fn=res, h=sensor_bracket_l, d=m3);
            translate([3,30-3,0]) cylinder($fn=res, h=sensor_bracket_l, d=m3);
            translate([sensor_bracket_w-3,30-3,0]) cylinder($fn=res, h=sensor_bracket_l, d=m3);
            translate([3,17,0]) cube([19,4,3]);
        }
    }
}
