//
//  FordFSeries12thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class FordFSeries12thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior(), self.Interior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Rough Running Engine at Idle",
                                description: "If the car has over 100,000 miles, it is essential to make sure that the exhaust gas recirculation sensors have been replaced as they can start to stick due to carbon build up. If the truck is idling rough, checking these sensors could prevent further damage to the engine."))
        problems.append(Problem(title: "Ignition Coil Failure",
                                description: "Excessive gaps in the spark plugs can cause the engine to misfire. It is important to make sure the spark plugs are properly lubricated using dielectric grease to ensure longevity of the engine."))
        problems.append(Problem(title: "Transmission Shifting Failure",
                                description: "Pay closer attention to the downshifting from gears into second year. Many users have reported premature downshifting into second from 3rd or 4th gear resulting in rough driving."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Passenger Side Head Gasket Leak",
                                description: "Ill-assembled head gasket results in oil leaking on passenger side. Oil leaks result in overheating, overfilling, and the disintegration of gasket coating. Hint: Leaking oil can be seen through the smell of burning oil. Ensuring there are no leaks near the head gasket as repair costs for this can be costly."))
        problems.append(Problem(title: "Common Rust Areas",
                                description: "Bed Corners of the Cab, Bottom of the doors, Rocker Panels."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
    
    private class func Interior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "MYFORD Touch Complaints",
                                description: "Common issues with the addition of the new interface has resulted in many users issuing complaints. Recurring complaints with the infotainment system include screen failing to return after being in energy saving mode, system fails to recognize smartphones resulting in failure of certain features, and rear-view camera shutting off when in reverse."))
        
        return CarModel(section: .Interior, problems: problems)
    }
}

