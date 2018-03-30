$fn=120;

cubeh=13;
cubew=45;
cubel=50;
wirew=4.4;
difference(){
    cube([cubew,cubel,cubeh]);
    translate([cubew/2,20,cubeh-9.5]) cylinder(h=9.5,d=28.5);
    translate([cubew/2-wirew/2,20,cubeh-7.5]) cube([wirew, 60, 7.5]);
}