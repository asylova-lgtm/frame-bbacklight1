use <akkum_18650.scad>

echo("Работа Асыловой Анастасии!");
thickness_frame = 4;
thickness_walls = 2;
thickness_bottom = 2;

w_back = 70;
h_back = 45;
thickness_back = 1;
h_walls = 4;

d_akkum = 18;
h_akkum = 65;

gap_backlight = 1.5;

kit_frame();

module kit_frame(){
    bottom();
    translate([0,0,h_walls/2+thickness_bottom/2])
    walls();
    wires();
}

module wires() {
    translate([w_back/2, -h_back/2+6, h_walls/2+0.5])
    rotate([0, 90, 0])
    color("red")
    cylinder(d=d_wires, h=25, center=true, $fn=25);
    
    translate([w_back/2, -h_back/2+2, h_walls/2+0.5])
    rotate([0, 90, 0])
    color("black")
    cylinder(d=d_wires, h=25, center=true, $fn=25);
}

module walls(){
    difference(){
        cube([w_back+2*thickness_walls+gap_backlight, h_back+2*thickness_walls+gap_backlight, h_walls], center = true);
        color("red")
        cube([w_back+gap_backlight, h_back+gap_backlight, h_walls+1], center = true);
    }
}
module backlight(){
    color("lightgreen")
    cube([w_back, h_back, thickness_back], center = true);
}

module bottom(){
    cube([w_back+2*thickness_walls+gap_backlight, h_back+2*thickness_walls+gap_backlight, thickness_bottom], center = true);
}