//
//  DodgeRam2ndGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class DodgeRam2ndGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Transmission Shifting Issues",
                                description: "Being a truck of this generation, most pickups are driven to haul and tow heavy equipment. Most trucks are also driven way past 200,000km. It is important to make sure that the transmission has been properly maintained. While the car is parked, shift the gears between Park, Reverse, and Drive. If the car jerks forward or makes any type of noise, this could be an indication that the transmission may need work further down the road."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Cracks in Subframe",
                                description: "Make sure to get under the truck and check for a significant amount of rust on the frame. More specifically, check for rust on the subframe of the truck near the steering box."))
        problems.append(Problem(title: "Rust Around Fuel Tank",
                                description: "Make sure to check for any rust around the fuel tank on the bottom of the truck. If the truck has been driven year round and through rough conditions, it is possible that there is rust forming near the fuel tank."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
}
