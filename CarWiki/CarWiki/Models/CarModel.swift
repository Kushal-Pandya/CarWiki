//
//  CarModel.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-24.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import Foundation

enum CarModelType: String {
    case Mechanical
    case Exterior
    case Interior
}
    
@objc
class CarModel: NSObject {
    var section: CarModelType
    var problems: [Problem]
    
    init(section: CarModelType, problems: [Problem]) {
        self.section = section
        self.problems = problems
    }
    
    class func getSections() -> [CarModel] {
        return [CarModel(section: .Exterior,
                         problems: [Problem(title: "Sample Problem",
                                            description: "Sample Problem Description")])]
    }
}

class Problem {
    var title: String
    var description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
