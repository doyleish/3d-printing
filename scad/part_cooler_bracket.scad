nozzle_d = 9.3;
nozzle_cutout = 8.7;

//bracket
bracket_w = 14;
bracket_t = 2;
bracket_l = 45;

//screw
m3=3.3;

difference(){
    cube([bracket_w, bracket_l, bracket_t]);
    translate([bracket_w/2, nozzle_d/2,0]){
        cylinder(h=bracket_t, r=nozzle_d/2);
    }
    translate([bracket_w/2-nozzle_cutout/2, 0,0]){
        cube([nozzle_cutout,nozzle_d/2,bracket_t]);
    }
    translate([bracket_w/2, bracket_l-6,0]){
        cylinder(h=bracket_t, r=m3/2);
    }
}