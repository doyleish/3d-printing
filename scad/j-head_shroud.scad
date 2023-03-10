//bracket dimensions
// slot dimensions
$fn=120;

bracket_w = 42;
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

fan_plate_side=42;
fan_plate_t=3;
fan_blade_dia=38;
fan_hub_dia=24.5;
fan_bolt_spread=32;
fan_bolt_offset=(fan_plate_side-fan_bolt_spread)/2;

//translate([bracket_w/2,slot_d,0]) cylinder(h=43+bracket_t, d=1.3);


// bottom plate
difference(){
    cube([bracket_w,bracket_l,bracket_t]);
    translate([bracket_w/2,slot_d,0]) cylinder(h=bracket_t, d=slot_w);
    translate([bracket_w/2-slot_cutout/2,0,0]) cube([slot_cutout,slot_d,bracket_t]);
    translate([bracket_w/2-bolt_sep2/2,slot_d-bolt_sep1/2,0]) cylinder(h=bracket_t, d=m3);
    translate([bracket_w/2-bolt_sep2/2,slot_d+bolt_sep1/2,0]) cylinder(h=bracket_t, d=m3);
    translate([bracket_w/2+bolt_sep2/2,slot_d-bolt_sep1/2,0]) cylinder(h=bracket_t, d=m3);
    translate([bracket_w/2+bolt_sep2/2,slot_d+bolt_sep1/2,0]) cylinder(h=bracket_t, d=m3);
}

// angled fan plate
translate([0,bracket_l,bracket_t]) {
rotate([90,0,0]) {
difference(){
    cube([fan_plate_side,fan_plate_side,fan_plate_t]);
    translate([fan_plate_side/2,fan_plate_side/2,0]) cylinder(h=fan_plate_t, d=fan_blade_dia);

    translate([fan_bolt_offset,fan_bolt_offset,0]) cylinder(h=fan_plate_t+.1, d=m3);
    translate([fan_plate_side-fan_bolt_offset,fan_bolt_offset,0]) cylinder(h=fan_plate_t+.1, d=m3);
    translate([fan_bolt_offset,fan_plate_side-fan_bolt_offset,0]) cylinder(h=fan_plate_t+.1, d=m3);
    translate([fan_plate_side-fan_bolt_offset,fan_plate_side-fan_bolt_offset,0]) cylinder(h=fan_plate_t+.1, d=m3);
}
}
}

//

////top half channel
difference(){
    hull(){
        translate([0,bracket_l,bracket_t]){ 
            rotate([90,0,0]){
                difference() {
                    translate([fan_plate_side/2,fan_plate_side/2,0]) cylinder(h=fan_plate_t, d=fan_blade_dia+2);
                    translate([0,fan_plate_side/2+1,0]) cube([fan_plate_side,fan_plate_side/2,fan_plate_t]);
                }
            }
        }
        translate([bracket_w/2-10.5,22,bracket_t]) cube([21,1,20.5]);
    }
    hull(){
        translate([0,bracket_l,bracket_t]){ 
            rotate([90,0,0]){
                difference() {
                    translate([fan_plate_side/2,fan_plate_side/2,0]) cylinder(h=fan_plate_t, d=fan_blade_dia);
                    translate([0,fan_plate_side/2,0]) cube([fan_plate_side,fan_plate_side/2,fan_plate_t]);
                }
            }
        }
        //j-head cooler
        translate([bracket_w/2-9.5,22,bracket_t]) cube([19,1,19.5]);
    }
}
//bottom half channel
difference(){
    hull(){
        translate([0,bracket_l,bracket_t]){ 
            rotate([90,0,0]){
                difference() {
                    translate([fan_plate_side/2,fan_plate_side/2,0]) cylinder(h=fan_plate_t, d=fan_blade_dia+2);
                    translate([0,0,0]) cube([fan_plate_side,fan_plate_side/2,fan_plate_t]);
                }
            }
        }
        translate([bracket_w/2-6,slot_d+9,43+bracket_t-2]) rotate([115,0,0]) cube([12,1,4]);
    }
    hull(){
        translate([0,bracket_l,bracket_t]){ 
            rotate([90,0,0]){
                difference() {
                    translate([fan_plate_side/2,fan_plate_side/2,0]) cylinder(h=fan_plate_t, d=fan_blade_dia);
                    translate([0,0,0]) cube([fan_plate_side,fan_plate_side/2+2,fan_plate_t]);
                }
            }
        }
        translate([bracket_w/2-5,slot_d+8,43+bracket_t-3.3]) rotate([115,0,0]) cube([10,2,2]);
    }
}
