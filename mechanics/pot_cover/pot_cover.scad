standoff = 1.5;
depth = 4.0;
diameter_top = 4.9;
diameter_bottom = 3.8;

$fs = 0.01;

module rounded_cylinder(r,h,n) {
  rotate_extrude(convexity=1) {
    offset(r=n) offset(delta=-n) square([r,h]);
    square([n,h]);
  }
}
       
color("orange") {
    difference() {
        translate([0,0,0]) {
            rounded_cylinder(diameter_top/2, depth+standoff, 0.5);       
        }
        cylinder(depth,d=diameter_top);
    }
    cylinder(depth,d=diameter_bottom);
}
