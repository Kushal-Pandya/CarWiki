//
//  DodgeRam3rdGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class DodgeRam3rdGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Front End Wear Out",
                                description: "This generation of Ram trucks are notorious for having their front end components wear out quickly. These parts include Ball Joints, Hubs, and Tie Rod Ends. Be sure to turn the wheel left to right while it is parked to hear for any noise coming from the front end. If you have access to a jack, lift the car and try to wiggle the front tires while they are positioned straight. If there is slight play in the tires this could indicate replacement of front end components."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Rust on body of Truck",
                                description: "Rust around the body of the truck is very common, especially if you live in an area where salt is used in the winter. Common areas where rust tends to form on this truck is underneath the doors, fenders, and cab corners. Be sure to check these out as the rust can quickly spread around the truck and can be expense to repair."))
        problems.append(Problem(title: "Faulty Rear Window Seal",
                                description: "Trucks of this generation are known to have their rear window seal leak as more kilometers are put on the truck. It is essential to check the seal and make sure there aren’t any cracks or holes. Cost to fix this is around $100 and can be done at home."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
}
