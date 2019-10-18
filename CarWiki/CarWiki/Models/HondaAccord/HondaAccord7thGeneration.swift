//
//  HondaAccord7thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-25.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class HondaAccord7thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Engine Related",
                                description: "Although extremely reliable, there are some issues that consumers should look out for when purchasing an eighth generation Honda Accord. To begin it is important to understand whether the car you are looking at is a 2.4L 4-cylinder or a 3.0L V6. Once identified we can break down the common issues with each engine."))
        problems.append(Problem(title: "Timing Belt vs. Timing Chain",
                                description: "The 2.4L engine has a timing chain which is maintenance free and requires no changing or replacing. The V6 model however has a timing belt which is suggested to be changed every 100,000 to 150,000 km."))
        problems.append(Problem(title: "Starter",
                                description: "If the car is high mileage, take a look at the starter. Repair costs for a starter are anywhere from $550 - $700. If the car cranks up on the first turn of the key, the starter should be running well. If the car takes a few seconds to turn on when you turn the key, the starter can be an area of problem to look into."))
        problems.append(Problem(title: "Oil Consumption",
                                description: "Higher oil consumption is also a common problem with Honda Accords. Before test driving, check the oil level of the car. Once returned from the test drive, check the oil levels again. If there is an irregularity between the two amounts, the engine could be consuming extra oil. Also check under the vehicle for any dripping liquids from the car such as engine oil, coolant, radiator fluid, or even brake line leak."))
        problems.append(Problem(title: "O2 Sensor",
                                description: "Rear O2 sensor failure is a common problem with the seventh generation accords. As the Oxygen Sensor begins to fail you may notice problems with the vehicle when it is idle. Loss of power, Hesitation, and stalling are only a few problems that can be caused by a failing O2 Sensor. Cost of fixing this is between $300 - $500."))
        problems.append(Problem(title: "Reverse Gear",
                                description: "A common problem with high mileage accords is their reverse gear. If you notice a “clunk” noise when shifting into the reverse gear, this could be an indication of a problematic area with the transmission."))
        problems.append(Problem(title: "Power Steering Pump",
                                description: "Locate the power steering pump and identify if there is a “weezing” noise coming from it. If there is, this could indicate a worn out washel or a pump that is going bad."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
}

