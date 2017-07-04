$fn=50;

bottomHeight = 1;

cylinderHolderHeight = 2.5;
cylinderHolderDiameterInner = 6.1;
cylinderHolderDiameterOuter = cylinderHolderDiameterInner + 2;
cylinderHolderBottomGap = bottomHeight + 6;

cube([40, 60, 1]);

translate([20, 10, cylinderHolderBottomGap]) {
    difference() {
        union() {
            rotate([90, 0, 0]) cylinder(cylinderHolderHeight, d1 = cylinderHolderDiameterOuter, d2 = cylinderHolderDiameterOuter, center=true);
            translate([0, 0, (cylinderHolderBottomGap / 2) - cylinderHolderBottomGap]) cube([cylinderHolderDiameterOuter, cylinderHolderHeight, cylinderHolderBottomGap ], center = true);
        }
        rotate([90, 0, 0]) cylinder(cylinderHolderHeight + 1, d1=cylinderHolderDiameterInner, d2=cylinderHolderDiameterInner, center=true);
    }
    
}

