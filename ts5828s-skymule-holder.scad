$fn=50;

bottomHeight = 1;

cylinderHolderHeight = 2.5;
cylinderHolderDiameterInner = 6.1;
cylinderHolderDiameterOuter = cylinderHolderDiameterInner + 4;
cylinderHolderBottomGap = bottomHeight + 10;
boardBottomGap = cylinderHolderBottomGap - 2.5;

translate([9, 8, 0]) cube([24, 31, 1]);

translate([26, 10, cylinderHolderBottomGap]) {
    difference() {
        union() {
            rotate([90, 0, 0]) cylinder(cylinderHolderHeight, d1 = cylinderHolderDiameterOuter, d2 = cylinderHolderDiameterOuter, center=true);
            translate([0, 0, (cylinderHolderBottomGap / 2) - cylinderHolderBottomGap]) cube([cylinderHolderDiameterOuter + 2, cylinderHolderHeight, cylinderHolderBottomGap ], center = true);
        }
        rotate([90, 0, 0]) cylinder(cylinderHolderHeight + 1, d1=cylinderHolderDiameterInner, d2=cylinderHolderDiameterInner, center=true);
    }
}

translate([9, 12.5, 0]) {
    union() {
        cube([2, 25.9, boardBottomGap + 2]);
        cube([3, 25.9, boardBottomGap]);
        translate([0, 0, boardBottomGap + 1]) cube([3, 25.9, 2]);
    }
}

translate([31, 12.5, 0]) {
    union() {
        translate([1, 0, 0]) cube([2, 25.9, boardBottomGap + 2]);
        cube([3, 25.9, boardBottomGap]);
        translate([0, 0, boardBottomGap + 1]) cube([3, 25.9, 2]);
    }
}