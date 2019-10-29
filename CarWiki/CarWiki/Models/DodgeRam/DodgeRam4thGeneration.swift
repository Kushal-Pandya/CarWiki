//
//  DodgeRam4thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class DodgeRam4thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "AC/Heater Failure",
                                description: "Many drivers have noticed that the AC and Heater components tend to fail periodically. Although this is not a common issues, many drivers have reported this issue. Make sure to turn on the AC and see if it blows cold air. If it does not, it may need Refrigerant. Make sure to listen for the condenser and see if it turns on when you switch the AC on."))
        problems.append(Problem(title: "Fuel Pump Failure",
                                description: "Replacing the fuel pump on these trucks can be expense. Although drivers have reported this issue it is important to make sure that the fuel pump is functioning properly. A good way to check this is by turning the key into the on positioning and listening closely to the fuel nozzle. If you hear a noise as soon as you turn the key to the on position, the fuel pump is functioning properly."))
        problems.append(Problem(title: "Cruise Control Fails to Disengage",
                                description: "Dodge has been made aware of this issue and have put a recall out for this issue. Might be a good idea to ask the seller and make sure that he has taken the truck in for the recall. If not, then make sure that it is still valid and you are able to."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()

        problems.append(Problem(title: "Faulty Rear Window Seal",
                                description: "Trucks of this generation are known to have their rear window seal leak as more kilometers are put on the truck. It is essential to check the seal and make sure there aren’t any cracks or holes. Cost to fix this is around $100 and can be done at home."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
}
