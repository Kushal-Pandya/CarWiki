//
//  FordFSeries13thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class FordFSeries13thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Interior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Electronic Throttle Body Malfunction",
                                description: "ETB (Electronic Throttle Body) transmits sensory data to the throttle valve, which controls the quantity of air that passes to the engine. An error called “Limp Mode” often occurs where the ETB stops reading and the truck loses momentum. Although the ETB can resume functioning it is important to have this changed immediately if it has not already been changed. Cost of this can be anywhere from $200-500 in parts alone."))
        problems.append(Problem(title: "Frozen Handle Truck Recall",
                                description: "One of the largest issues for this series of F-150 is the frozen handles on the truck. Subzero temperatures can cause the latch inside the handles to freeze and disconnect from the door striker causing the doors to abruptly open while driving."))

        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Interior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Seat Cooling Failure",
                                description: "Be sure to check the seat cooling function even if it is freezing outside. There have been known issues with the seat cooling feature where it will shut off shortly after engaging the feature. This can result in replacing the whole front seat which can cost anywhere from $200-$400 in parts."))
        
        return CarModel(section: .Interior, problems: problems)
    }
}
