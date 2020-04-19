inner_width = 30.4;
inner_height = 6.0;
inner_depth = 5.0;
outer_width = inner_width + 6.0;
outer_height = inner_height + 6.0;
outer_depth = 2.0;
pin_width = 0.8;
pin_pitch = 2.54;
bevel = 1.0;

$fs = 0.01;

module pyramid(w,h,d,b) {
    polyhedron(
        points=[[0,0,0],[w,0,0],[w,h,0],[0,h,0],
                [b,b,d],[w-b,b,d],[w-b,h-b,d],[b,h-b,d]],
        faces=[[0,1,2,3],[4,5,1,0],[7,6,5,4],[5,6,2,1],[6,7,3,2],[7,4,0,3]]
    );
}

color("gray") {
    difference() {
        union() {
            translate([-outer_width/2,-outer_height/2,0]) {
                cube([outer_width,outer_height,outer_depth]);
            }
            translate([-inner_width/2,-inner_height/2,outer_depth-bevel]) {
                cube([inner_width,inner_height,inner_depth]);
            }
            translate([-inner_width/2,-inner_height/2,outer_depth+inner_depth-bevel]) {
                pyramid(inner_width,inner_height,bevel,bevel);
            }
        }
        translate([(-inner_width/2)+2,(pin_pitch-pin_width)/2,outer_depth]) {
            cube([inner_width-4,pin_width,outer_depth+inner_depth+1]);
        }
        translate([(-inner_width/2)+2,-(pin_pitch+pin_width)/2,outer_depth]) {
            cube([inner_width-4,pin_width,outer_depth+inner_depth+1]);
        }
    }
}