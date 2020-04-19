width = 15.8;
height_bottom = 50.0;
height_top = 32.6;
depth_total = 19.0;
depth_top = 3.0;
led_diameter = 3.3;
button_diameter = 5.5;
pot_diameter = 4.0;

led1_pos = [-4,10];
led2_pos = [-4,0];
led3_pos = [-4,-10];
button1_pos = [4,0];
button2_pos = [4,-10];
pot_pos = [4,10];
hole1_pos = [0,20];
hole2_pos = [0,-20];

$fs = 0.01;

module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}
       
module body() {
    color("gray") {
        difference() {
            union() {
                translate([(-width/2)+0.7,-height_bottom/2,0]) {
                    cube([width-2.3,height_bottom,depth_total-depth_top]);
                }
                hull() {
                    translate([(width/2)-1.5,(height_top/2)-1.5,depth_total-depth_top]) {
                        cylinder(h=depth_top,d=3);
                    }
                    translate([(width/2)-1.5,(-height_top/2)+1.5,depth_total-depth_top]) {
                        cylinder(h=depth_top,d=3);
                    }
                    translate([-width/2,(height_top/2)-3,depth_total-depth_top]) {
                        cube([3,3,depth_top]);
                    }
                    translate([-width/2,-height_top/2,depth_total-depth_top]) {
                        cube([3,3,depth_top]);
                    }
                }
            }
            translate([-width,-height_top/2,depth_total-depth_top]) {
                rotate([180,0,0]) {
                    prism(2*width,(height_bottom-height_top)/2,10);
                }
            }
            translate([width,height_top/2,depth_total-depth_top]) {
                rotate([180,0,180]) {
                    prism(2*width,(height_bottom-height_top)/2,10);
                }
            }
        }
    }
}

module led(pos) {
    translate([pos.x,pos.y,-1]) {
        cylinder(depth_total+2,d=led_diameter);
    }
}

module button(pos) {
    translate([pos.x,pos.y,-1]) {
        cylinder(depth_total+2,d=button_diameter);
    }
}

module pot(pos) {
    translate([pos.x,pos.y,-1]) {
        cylinder(depth_total+2,d=pot_diameter);
    }
}

module hole(pos) {
    translate([pos.x,pos.y,-1]) {
        cylinder(10,d=2.7);
    }
}

module cutout() {
    difference() {
        translate([(-width/2)+1.7,(-height_bottom/2)+8,0]) {
            cube([width,height_bottom-16,depth_total-depth_top]);
        }
        translate([-width/2,(-height_bottom/2)+12,depth_total-2]) {
            rotate([180,0,0]) {
                prism(width,4,10);
            }
        }
        translate([width/2,(height_bottom/2)-12,depth_total-2]) {
            rotate([180,0,180]) {
                prism(width,4,10);
            }
        }
        translate([(-width/2)+1.7,-5.5,12]) {
            cube([6,1,depth_total-depth_top-12]);
        }
        translate([(-width/2)+1.7,4.5,12]) {
            cube([6,1,depth_total-depth_top-12]);
        }
        translate([0,6,8]) {
            cube([2,height_bottom-16,depth_total-depth_top-8]);
            cube([width/2,2,depth_total-depth_top-8]);
        }
    }
}

difference() {
    body();
    led(led1_pos);
    led(led2_pos);
    led(led3_pos);
    button(button1_pos);
    button(button2_pos);
    pot(pot_pos);
    hole(hole1_pos);
    hole(hole2_pos);
    cutout();
}