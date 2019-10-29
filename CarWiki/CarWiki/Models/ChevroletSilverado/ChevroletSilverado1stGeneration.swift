//
//  ChevroletSilverado1stGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class ChevroletSilverado1stGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Exterior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Parking Brake Failure",
                                description: "Parking Brake failure is common in this generation of trucks and can be expensive to maintain if it is malfunctioning. The friction linings on the parking brake may wear so severely that the parking brake cannot keep a parked car immobile. Although there has been a recall issued on this matter it is important to know from the seller if this has been changed and to put the parking brake on and give a little gas to see if the car moves. If the car does not remain stationary that could mean that the friction linings are slowly wearing."))
        problems.append(Problem(title: "Steering Column Noise",
                                description: "Many drivers have noticed a knock or a clunk noise from the steering shaft. You can notice this sound when you turn the steering wheel. The steering wheel has a splined slip joint that has grease in the slip portion. Overtime this grease can move to one end of the joint causing a noise to be produced. If you hear this noise this may mean that it needs to be regreased or replaced with an aluminum shaft which can cost upwards of $400."))
        problems.append(Problem(title: "Fuel Pump Failure",
                                description: "A very common issue with this generation which has been reported by multiple drivers. In many cases the fuel pump has failed which has resulted in the engine to stall and not restart afterwards. Ensure that this is not common and that the fuel pump has either been replaced or is functioning properly. Turn the key to the on position and have someone listen closely near the fuel tank. If you hear it kick on instantly, the fuel pump is functioning properly. Replacing the fuel pump can cost anywhere between $700-$1000."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Exterior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Rusted out Brake Lines",
                                description: "Another common issue is rusted out brake lines that can cause the brakes to fail. This problem typically occurs after the truck has been driven 150,000km but can be common if the truck is driven in the winter. The cost of this can be anywhere from $500-$700."))
        
        return CarModel(section: .Exterior, problems: problems)
    }
}
