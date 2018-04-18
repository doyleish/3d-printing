// Lets make an axial compressor!
// Single stackable compressor stage

// Render setting ========
render_housing=1;
render_compressor=1;


// Params  ===========
// ================
$fn=200;

// Housing
housing_id=60;
housing_od=65;
housing_h=32;
num_flanges=3;

// All fans
fan_blade_tolerance=0.5; // Between blade and housing
fan_fan_tolerance=1; // between stages, stator and compressor. aka size of washer
fan_blade_thickness=1.4;
fan_hub_thickness=(housing_h-fan_fan_tolerance*2)/2;

// stator fan
// Comment out unused stages
stator_num_blades=8;
stator_blade_angle=20;

//Stage 3
stator_hub_d_start=53.5;
stator_hub_d_end=55;

//Stage 2
stator_hub_d_start=44;
stator_hub_d_end=50;

//Stage 1
stator_hub_d_start=26;
stator_hub_d_end=36;


// compressor fan 
// Comment out unused stages
compressor_num_blades=10;
compressor_blade_angle=30;

//Stage 3
compressor_hub_d_start=50;
compressor_hub_d_end=53.5;

//Stage 2
compressor_hub_d_start=36;
compressor_hub_d_end=44;

//Stage 1
compressor_hub_d_start=13;
compressor_hub_d_end=26;

// Misc
m3=3;
shaft_od=4;
bearing_od=12;
bearing_thickness=4;
washer_od=10;
washer_thickness=1.6;
//================




// stator Housing Def =============
// ================
if(render_housing){
// Housing
difference(){
    cylinder(d=housing_od, h=housing_h);
    cylinder(d=housing_id, h=housing_h);
}

// Stator blades
difference(){
    intersection(){
        union(){
            hull(){
                cylinder(d=stator_hub_d_end,h=0.001);
                translate([0,0,fan_hub_thickness]) cylinder(d=stator_hub_d_start,h=0.001);
            }
    
            for(i=[0:stator_num_blades-1]){
                rotate([0,0,i*(365/stator_num_blades)]) {
                    translate([shaft_od*-1,housing_od/2,fan_hub_thickness/2]) {
                        rotate([0,stator_blade_angle,0]) {
                            cube([fan_blade_thickness,housing_od, fan_hub_thickness*2],true);
                        }
                    }
                }
            }
        }
        cylinder(d=housing_id,h=fan_hub_thickness);
    
    }
    cylinder(d=shaft_od+1,h=fan_hub_thickness);
    cylinder(d=bearing_od,h=bearing_thickness);
    translate([0,0,fan_hub_thickness-bearing_thickness]) cylinder(d=bearing_od,h=bearing_thickness);

}
}

if(render_compressor){
translate([0,0,fan_hub_thickness*3+1]){
difference(){
    intersection(){
        union(){
            hull(){
                cylinder(d=compressor_hub_d_end,h=0.001);
                translate([0,0,fan_hub_thickness]) cylinder(d=compressor_hub_d_start,h=0.001);
            }
    
            for(i=[0:compressor_num_blades-1]){
                rotate([0,0,i*(365/compressor_num_blades)]) {
                    translate([shaft_od,housing_od/2,fan_hub_thickness/2]) {
                        rotate([0,compressor_blade_angle*-1,0]) {
                            cube([fan_blade_thickness,housing_od, fan_hub_thickness*2],true);
                        }
                    }
                }
            }
        }
        cylinder(d=housing_id-fan_blade_tolerance*2,h=fan_hub_thickness);
    
    }
    cylinder(d=shaft_od,h=fan_hub_thickness);

}
}
}









