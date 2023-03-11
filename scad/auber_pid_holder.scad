wall_t=3;
inner_wall_t=2.1;
wall_t2=wall_t*2;
auber_x=65;
auber_y=79.5;
auber_z=35.5;
auber_ridge=5.65;
gaggia_t=1.3;
gusset=12;

cube([wall_t2+auber_x,wall_t2+auber_y,wall_t]);
cube([wall_t,wall_t2+auber_y,wall_t+gusset]);
cube([wall_t2+auber_x,wall_t,wall_t+auber_ridge]);
translate([0,wall_t+auber_y,0]) cube([wall_t2+auber_x,wall_t,wall_t+auber_ridge]);

translate([auber_x+wall_t,0,0]) cube([wall_t,wall_t2+auber_y,wall_t2+auber_z]);
translate([auber_x+wall_t,0,wall_t+auber_z]) cube([wall_t+inner_wall_t+gaggia_t,wall_t2+auber_y,wall_t]);
translate([auber_x+wall_t2+gaggia_t,0,auber_z/2]) cube([inner_wall_t,wall_t2+auber_y,wall_t2+auber_z/2]);

//Gussets
translate([wall_t+auber_x-gusset,0,wall_t]) {
    difference(){
        cube([gusset,wall_t,gusset]);
        rotate([0,-45,0]) cube([gusset*2,wall_t,gusset*2]);
    }
}

translate([wall_t+auber_x-gusset,wall_t+auber_y,wall_t]) {
    difference(){
        cube([gusset,wall_t,gusset]);
        rotate([0,-45,0]) cube([gusset*2,wall_t,gusset*2]);
    }
}

translate([wall_t+gusset,0,wall_t]) {
    difference(){
        rotate([0,-90,0]) cube([gusset,wall_t,gusset]);
        rotate([0,-45,0]) cube([gusset*2,wall_t,gusset*2]);
    }
}
translate([wall_t+gusset,wall_t+auber_y,wall_t]) {
    difference(){
        rotate([0,-90,0]) cube([gusset,wall_t,gusset]);
        rotate([0,-45,0]) cube([gusset*2,wall_t,gusset*2]);
    }
}