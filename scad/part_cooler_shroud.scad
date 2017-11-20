// resolution
res=120;

//bracket
fan_plate_w = 44;
fan_plate_d = 44;
shell = 2;
fan = 40;

bracket_w = 13;
bracket_h = 10;
bracket_t = 3;

//screw
m3=3.3;
m3_offset= 6;

//main plate
difference(){
    cube([fan_plate_w, fan_plate_d, shell]);
    translate([0,fan_plate_d-fan_plate_w,0]){
        translate([fan_plate_w/2, fan_plate_w/2,0]){
            cylinder($fn=res, h=shell, d=36);
        }
        translate([m3_offset, m3_offset,0]){
            cylinder($fn=res, h=shell, d=m3);
        }
        translate([fan_plate_w-m3_offset, m3_offset,0]){
            cylinder($fn=res, h=shell, d=m3);
        }
        translate([m3_offset, fan_plate_w-m3_offset,0]){
            cylinder($fn=res, h=shell, d=m3);
        }
        translate([fan_plate_w-m3_offset, fan_plate_w-m3_offset,0]){
            cylinder($fn=res, h=shell, d=m3);
        }
    }
}
difference(){
    translate([fan_plate_w/2-bracket_w/2,0,shell]){
        cube([bracket_w,bracket_t,bracket_h]);
    }
    translate([fan_plate_w/2,0,6]){
        rotate([-90,0,0]){
            cylinder($fn=res, h=bracket_t, d=m3);
        }
    }
}

difference(){
    hull(){
        translate([0,0,shell]){
            cube([fan_plate_w, fan_plate_d, shell]);
        }
        
        translate([fan_plate_w/4,44-7,29]){rotate([-60,0,0]){
            cube([fan_plate_w/2, 10, shell]);
        }}
    }
    hull(){
        translate([shell,shell,shell]){
            cube([fan_plate_w-shell*2, fan_plate_d-shell*2, shell]);
        }
         
        translate([fan_plate_w/4,44-7,29]){rotate([-60,0,0]){
                translate([shell,shell,0]){
                    cube([fan_plate_w/2-shell*2, 10-shell*2, shell]);
                }
        }}
   }
}