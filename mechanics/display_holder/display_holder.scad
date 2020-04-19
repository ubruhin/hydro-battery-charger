height_total = 19.0;
display_height = 11.6;
distance = height_total - display_height;
edge = 3.3;

$fs = 0.01;

difference() {
    union() {
        cylinder(distance,d=7);
        translate([-edge/2,-edge/2,distance]) {
            cube([edge,edge,2]);
        }
        translate([0,0,distance+2]) {
            polyhedron(
                points=[[edge/2,edge/2,0],
                        [edge/2,-edge/2,0],
                        [-edge/2,-edge/2,0],
                        [-edge/2,edge/2,0],
                        [0,0,3]],
                faces=[[0,1,4],
                       [1,2,4],
                       [2,3,4],
                       [3,0,4],
                       [1,0,3],
                       [2,1,3]]
             );
        }
    }
    cylinder(5,d=2.7);
    translate([0,0,5]) {
        cylinder(4,d1=2.7,d2=0);
    }
}