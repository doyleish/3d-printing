res = 120;

difference(){
    union(){
        cube([73,10,3]);
        translate([0,5,0]) cylinder($fn=res, d=10, h=6);
    }
    translate([0,5,0]) cylinder($fn=res, d=5, h=6);
}
translate([0,-5,3]) linear_extrude(3) text("Mary", size=25, spacing=0.9, font="DejaVu Sans");