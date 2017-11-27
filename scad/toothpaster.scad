difference(){
    cube([75, 25,3]);
    translate([(75-60)/2,6.5,]) cube([60,1.9,3]);
}

translate([(75/2)-20,17,3]) cylinder(d=7.5, h=1);
translate([(75/2),17,3]) cylinder(d=7.5, h=1);
translate([(75/2)+20,17,3]) cylinder(d=7.5, h=1);