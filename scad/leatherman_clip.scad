//shell
wall=2;

//leatherman dimensions
l_w=32.8;
l_d=16.5;
l_h=102-15;

// finger cutout
cutout_w=21;
cutout_d=14;

// inside bumps
bumps_h=37.5;  //bottom of leatherman to center of bumps
bumps_r=15;  //radius of bumps
bumps_p=1;  // protrusion of bumps

// CALCULATED PARAMS.
o_w=l_w+2*wall;
o_h=l_h+wall;
o_d=l_d+2*wall;


// (Shell + bumps) - bump extras
difference(){
    // Shell + bumps
    union(){
        // Shell
        difference(){
            //main frame
            cube([o_w,o_d,o_h]);
            
            // center cutout.  must fit leatherman
            translate([wall,wall,wall]){
                cube([l_w,l_d,l_h]);
            }
            
            // cutout for finger pull
            translate([o_w/2- cutout_w/2,0,0]){
                cube([cutout_w,cutout_d,o_h]);
            }
        }
        
        // Bumps
        translate([wall,wall,bumps_h+wall]){
            translate([-1*bumps_r+bumps_p,0,0]){
                rotate([-90,0,0]){
                    cylinder(h=l_d, r=bumps_r);
                }
            }
            translate([l_w+bumps_r-bumps_p,0,0]){
                rotate([-90,0,0]){
                    cylinder(h=l_d, r=bumps_r);
                }
            }
        }
        
    }
    
    // Slice the sides off the bumps
    translate([-2*bumps_r,0,0]){
        cube([2*bumps_r,o_d,o_h]);
    }
    translate([o_w,0,0]){
        cube([2*bumps_r,o_d,o_h]);
    }
}

// Brackets

bracket_w=20;
bracket_h=20;
bracket_d=9;

pclip_r=.65;
pclip_s=12;
pclip_offset=6;

//paperclip bracket
translate([o_w/2-bracket_w/2, o_d,l_h*.75]){
    difference(){
        cube([bracket_w,bracket_d,bracket_h]);
        
        // holes
        translate([(bracket_w/2)-(pclip_s/2),pclip_offset,-4]){
            cylinder(h=bracket_h, r=pclip_r);
        }
        translate([(bracket_w/2)+(pclip_s/2),pclip_offset,-4]){
            cylinder(h=bracket_h, r=pclip_r);
        }
        
        //bevel
        rotate([-45,0,0]){
            cube([bracket_w,bracket_d*3,bracket_h]);
        }

    }
}