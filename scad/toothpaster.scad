difference(){
    cube([75, 35,3]);
    translate([(75-60)/2,6.5,]) cube([60,1.9,3]);
}

translate([(75/2)-20,21,3]) cylinder(d=9.5, h=1);
translate([(75/2),21,3]) cylinder(d=9.5, h=1);
translate([(75/2)+20,21,3]) cylinder(d=9.5, h=1);