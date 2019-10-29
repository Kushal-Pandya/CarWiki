//
//  ChevroletSilverado3rdGeneration.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-28.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

class ChevroletSilverado3rdGeneration: CarModel {
    
    override class func getSections() -> [CarModel] {
        return [self.Mechanical(), self.Interior()]
    }
    
    // MARK: Private methods
    
    private class func Mechanical() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Service 4WD Message",
                                description: "4WD transfer case sensor may fail causing the service 4WD sign to display on the dashboard. Although the 4WD may be functional, the sensor may fail needing to be replaced. Cost of this can be $100 to $300."))
        
        return CarModel(section: .Mechanical, problems: problems)
    }
    
    private class func Interior() -> CarModel {
        var problems = [Problem]()
        
        problems.append(Problem(title: "Loose Knee Bolster",
                                description: "From the factory there have been reported issues of the knee bolster being loose under the steering column and eventually falling as the vehicle is being driven. Ensure that the screws are tight."))
        problems.append(Problem(title: "Broken/Warped Dash",
                               description: "Look at the dash to make sure that there aren’t any fading of material or places where it is starting to crack. This is a common issue that has been reported by the owners of this truck."))
        
        return CarModel(section: .Interior, problems: problems)
    }
}
