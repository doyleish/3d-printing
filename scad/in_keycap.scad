b_w = 18.1;
b_l = 18.1;
t_w = 13.5;
t_l = 13.5;
h = 9.5;

shell = 1.6;
stem_offset = 3.9;

difference(){
    hull(){
      cube([b_w,b_l,0.01]);
      translate([(b_w-t_w)/2,(b_w-t_l)/2,h]){
          cube([t_w,t_l,0.01]);
      }
    }
    translate([shell,shell,0]){
        hull(){
          cube([b_w-2*shell,b_l-2*shell,0.01]);
          translate([(b_w-t_w-2*shell)/2,(b_w-t_l-2*shell)/2,stem_offset]){
              cube([t_w,t_l,0.01]);
          }
        }
    }
}

difference(){
//    translate([b_w/2,b_l/2,0]) cylinder(d=5.5, h=h-0.1, $fn=240);
    translate([(b_w-6.4)/2,(b_l-4.7)/2,0]) cube([6.4,4.7,h-0.1]);

    
    translate([(b_w-7)/2,(b_l-1.6)/2,0]) cube([7,1.6,stem_offset+0.2]);
    translate([(b_w-1.6)/2,(b_l-7)/2,0]) cube([1.6,7,stem_offset+0.2]);

}

translate([2.5,3.7,h]) linear_extrude(1) text("in",size=11,font="Source Sans Pro:style=Bold");

cube([b_w,b_l,0.2]);