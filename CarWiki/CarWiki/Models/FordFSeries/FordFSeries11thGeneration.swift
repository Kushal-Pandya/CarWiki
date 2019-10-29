//
//  FordFSeries11thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class FordFSeries11thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Spark Plugs Breaking",
                                description: "Whether it is a 4.6L or 5.4L engine, the complicated design that ford has implemented for its spark plugs results in the breaking of spark plugs if they’re not removed correctly. The tips of the spark plugs are prone to breaking and remaining lodged in the cylinder."))
        problems.append(Problem(title: "Airbag Deployment",
                                description: "Although there is a recall, make sure the previous owner has addressed this issue as the driver’s side airbag is prone to deploy abruptly without cause."))
        problems.append(Problem(title: "Window Component",
                                description: "Common issue involving power window regulators on doors. Components have a tendency to fail and cause window panes to drop into the doors or making a grinding noise while moving up and down."))
        problems.append(Problem(title: "Loud Noise From the Engine",
                                description: "Problems with the cam phaser resulted in sounds that resemble clicks and knocks coming from the engine. If ignored this issue can result in engine failure."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Aluminum Hood Corrosion",
                                description: "A common problem with the eleventh generation Ford F-Series is the premature corrosion of the aluminum hoods that are equipped on the vehicle. This corrosion is also present on the fuel-tank straps that hold the fuel tank in place. Be sure to check these straps located underneath the bed of the truck."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
}
