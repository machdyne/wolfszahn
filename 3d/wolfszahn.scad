/*
 * Wolfszahn Socket
 * Copyright (c) 2025 Lone Dynamics Corporation. All rights reserved.
 *
 * required hardware:
 *  - 1 x M2.5 x 6mm bolt
 *  - 1 x M2.5 nut
 *
 */
 
translate([11,8,3]) wolfszahn();
 
color([0.4,0.4,0.4]) translate([-100,116,0]) import("msx.stl");
color([1,0,0]) translate([11.5,8,0]) cylinder(d=2.5, h=6, $fn=36);
    
 module wolfszahn() {
          
    difference() {
        minkowski() {
            translate([-2.5,0,1.9]) cube([15-3.8,18-1.8,6.4-1.8], center=true);
            sphere(1.0);
        }
                
        translate([-11,0,2]) cube([12.5,16.25,2.5], center=true);      
        translate([-11,0,0]) cube([12.5,15.05,2.6], center=true);
        
        rotate([0,20,0]) translate([-14,0,-1.25]) cube([10,16.25,2.5], center=true);           
        
        translate([8,0,4.4+2]) cube([15,20,6.5], center=true);
        translate([0.5,0,0]) cylinder(d=2.75, h=50, $fn=36, center=true);
        translate([0.5,0,5]) rotate([0,0,30]) cylinder(d=6.25, h=7, $fn=6, center=true);        
        translate([-6,6.25,5]) cube([2.5,1,5], center=true);
                
    }
 
 }