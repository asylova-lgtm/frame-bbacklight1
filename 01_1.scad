echo("Работа Асыловой Анастасии!");
w_frame = 65;
d_frame = 5;
h_frame = 40;
thickness_frame = 4;

w_back = 60;
h_back = 35;
thickness_back = 1;

//frame1();

rotate([90, 0, 0])
backlight();

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