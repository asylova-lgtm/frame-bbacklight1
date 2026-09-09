echo("Работа Асыловой Анастасии!");
w_frame = 65;
d_frame = 5;
h_frame = 40;
thickness_frame = 4;
thickness_walls = 2;
thickness_bottom = 2;

w_back = 60;
h_back = 35;
thickness_back = 1;
h_walls = 4;


//frame1();

//rotate([90, 0, 0])
//translate([0,0,3])
//backlight();

kit_frame();

module kit_frame(){
    bottom();
    translate([0,0,h_walls/2+thickness_bottom/2])
    walls();
}
module walls(){
    difference(){
        cube([w_back+2*thickness_walls, h_back+2*thickness_walls, h_walls], center = true);
        color("red")
        cube([w_back, h_back, h_walls+1], center = true);
    }
}
module backlight(){
    color("lightgreen")
    cube([w_back, h_back, thickness_back], center = true);
}

module frame1(){
    difference() {
        cube([w_frame, d_frame, h_frame],center = true);
        color("red")
        cube([w_frame-2*thickness_frame, d_frame+1, h_frame-2*thickness_frame], center = true);
    }
}

module bottom(){
    cube([w_back+2*thickness_walls, h_back+2*thickness_walls, thickness_bottom], center = true);
}