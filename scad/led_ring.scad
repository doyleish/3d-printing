$fn=200;
thiccness=2;
led_count=12;
od=40;
id=20;
led_od=3.5;

difference(){
    cylinder(h=thiccness, d=od);
    cylinder(h=thiccness, d=id);
}