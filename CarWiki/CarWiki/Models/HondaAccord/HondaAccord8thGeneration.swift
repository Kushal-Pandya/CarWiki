//
//  HondaAccord8thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-24.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class HondaAccord8thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Engine Related",
                                description: "Although extremely reliable, there are some issues that consumers should look out for when purchasing an eighth generation Honda Accord. To begin it is important to understand whether the car you are looking at is a 2.4L 4-cylinder or a 3.0L V6. Once identified we can break down the common issues with each engine."))
        problems.append(Problem(title: "VTC Actuator",
                                description: "In the 2.4L 4-cylinder, the accords are notorious for having VTC Actuator issues. If you hear a loud rattling noise during a cold engine startup, this could mean that the actuator needs replacing. This is noticeable when the car is first started after it has been sitting for a few hours and the engine has cooled down. Parts and labour are estimated between $500 - $700."))
        problems.append(Problem(title: "Rear Brake Calipers",
                                description: "Rear brake calipers may seize from time to time as well has the brake line leaking. An easy indication of this is from either the low brake fluid light on the dashboard or if you look underneath the car and follow the cable that connects near the rear tires. Costs of fixing this are $300 - $400."))
        problems.append(Problem(title: "Oil Consumption",
                                description: "Many consumers complain about oil consumption in both sized engines.  Before test driving, check the oil level of the car. Once returned from the test drive, check the oil levels again. If there is an irregularity between the two amounts, the engine could be consuming extra oil."))
        problems.append(Problem(title: "Front and Rear Wheel Bearing",
                                description: "If you hear a humming noise at speeds above 70 km/h this may be an indication that the wheel bearings need replacing. An easy way to check this is by lifting the car up on a jack stand and rocking the wheel while grabbing the top and bottom. If there is play, this may be an indication that the wheel bearing needs replacing."))
        problems.append(Problem(title: "V6 Oil Consumption",
                                description: "V6 Models have VCM (Variable Cylinder Management) and can cause increased oil consumption if it continuously switches on and off when driving. Take a look at the dashboard to see if the light indicator is performing out of order."))
        problems.append(Problem(title: "Door Locks and Window Motor",
                                description: "Honda’s are notorious for their door lock and window motor malfunction. Ensure that all the doors on the car looks at the same time and that all the windows roll up and down without a delay in the motor."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
}
