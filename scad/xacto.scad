$fn=100;

difference(){
    cylinder(h=55, d=13.25);
    cylinder(h=22, d=11.25);
    cube([1.4, 11, 106], true);
    hull(){ 
        translate([0,0,22]) cylinder(h=0.01, d=11.25);
        translate([0,0,28]) cube([1.4, 11, 0.01],true);
    }
    for(i=[0:15]){
        rotate([0,0,i*(360/16)]) translate([6.625,0,0]) cylinder(h=22, d=.5);
    }
    //translate([-3.5,-2.6,54.4]) linear_extrude(height=0.6) text("x");
    //translate([-1.25,-5,54.4]) linear_extrude(height=0.6) text("2", size=3);
}
hull(){ 
    translate([0,0,55]) cylinder(h=0.01, d=13.25);
    translate([0,0,56]) cylinder(h=0.01, d=12);
}
translate([-3.5,-2.9,56]) linear_extrude(height=0.6) text("x");
translate([-1.25,-4.9,56]) linear_extrude(height=0.6) text("2", size=3);

