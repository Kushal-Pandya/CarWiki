//
//  ChevroletSilverado2ndGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class ChevroletSilverado2ndGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Interior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Heating and AC Temperature Gauge",
                                description: "Many consumers have reported their heating and cooling being fidgety and delivering the wrong temperature through the vents. This can be caused by a failure in the actuator that controls this feature. Although the actuators are not expenses and can range from $50-$100 per actuator, fixing multiple actuators and paying for labour can be expensive."))
        problems.append(Problem(title: "Continuous Running of Anti-Braking System",
                                description: "Drivers have also reported that the anti-lock braking pump may continue running even after turning off the ignition. This can be caused by the actual ABS unit burning out. The cost to repair this is rather expensive and can range from anywhere between $700 and $1000."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Interior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Defective Speakers",
                                description: "Many consumers who have this generation complain about the speakers being defective periodically. The speakers in the doors are the most notorious for this and can stop working due to moisture buildup in the doors. It is important to make sure the radio and all speakers work as this is a common issue and can be detrimental to the future of your used car."))
        problems.append(Problem(title: "CD Player Failure",
                               description: "Another issue with this generation is the entertainment system failing periodically. Drivers have reported that the CD Player will make whirring noises and eject the CD without reason. Fixing this can actually lead to taking out the whole radio unit and sending it in for repair."))
        
        return CarModel(section: .Interior, problems: problems)
    }
}
