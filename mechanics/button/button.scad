depth_total = 19.0;
depth_button = 3.5;
standoff = 1.5;
button_height_over_pcb = 7.5;
button_diameter_top = 4.9;
button_diameter_bottom = 6.5;
button_hole_size = 2.8;
button_hole_depth = 2.0;

h1 = depth_total + standoff - button_height_over_pcb + button_hole_depth;
h2 = depth_total - depth_button - button_height_over_pcb + button_hole_depth;

$fs = 0.01;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}
       
color("orange") {
    difference() {
        union() {
            rounded_cylinder(button_diameter_top/2, h1, 0.5);
            translate([0,0,h2-2]) {
                cylinder(2,d1=button_diameter_bottom,d2=button_diameter_top);
            }
            cylinder(h2-2,d=button_diameter_bottom);
        }
        translate([-button_hole_size/2,-button_hole_size/2,0]) {
            cube([button_hole_size,button_hole_size,button_hole_depth]);
        }
    }
}
