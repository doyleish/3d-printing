$fn=120;
translate([-15,20,0])cube([30,50,4]);
translate([-15,35,0])cube([30,20,8]);
difference(){
cylinder(r=48, h=60);
cylinder(r=43, h=60);
translate([-50,-50,0]) cube([100,60,60]);
}