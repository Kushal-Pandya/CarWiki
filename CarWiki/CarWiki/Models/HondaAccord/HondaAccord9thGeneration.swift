//
//  HondaAccord9thGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-25.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class HondaAccord9thGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior(), self.Interior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Battery",
                                description: "This generation of Honda Accords have a common problem with their batteries and battery terminals. A weak or corroded battery can cause lack of steering as well as other electrical problems with the vehicle."))
        problems.append(Problem(title: "Starter",
                                description: "The starter motor failing is a common issue with this generation of accords. To better understanding if the starter motor is going, notice how many cranks it takes for the car to start. If you turn the key and it doesn't start on the first attempt this could be an indication that the starter may need to be replaced. Grinding noises coming from the engine can also indicate a problem with the starter when trying to start the car up."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Headlights",
                                description: "Many consumers have complained about headlights burning out which with higher year accords. Take a look at the front headlights with the lights on to make sure they are not flickering or dim. An indication of this could result in full headlight unit replacement that can be expensive to replace."))
        problems.append(Problem(title: "Oil Leaks",
                                description: "Check under the vehicle for any dripping liquids from the car such as engine oil, coolant, radiator fluid, or even brake line leak. Look closely to make sure that there aren’t any leaks of any kind. It is common for water to leak from you car AC as this is water condensation that is draining from your air conditioning system. If the liquid has any smell from it, this could be an indication that it is not water and rather some other liquid."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
    
    private class func Interior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Doors",
                                description: "On highway speeds, many consumers discuss noise of wind coming from the doors of the car. Listen closely and see if the door is closed properly and if the noise still persists."))
        problems.append(Problem(title: "Electronics",
                                description: "There are many added features in this generation of accords that make the driving experience unforgettable for consumers. However, added features increases the risk of added problems with the electronics. Check features such as the GPS, Rear Camera, Lane Assist, and the Infotainment System to ensure that all the features are performing well. Although these problems can be resolved with software updates, many times a full unit replacement is required and if not under warranty, the prices can be expensive."))
        
        return CarModel(section: .Interior, problems: problems)
    }
}

