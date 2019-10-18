//
//  DetailsViewController.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-17.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit
import Foundation

class DetailsTableViewController: UITableViewController {
    
    var make: String = ""
    var model: String = ""
    var generation: String = ""
    var carModel: AnyClass = CarModel.self
    var carData: [CarModel] = [CarModel(section: .Exterior, problems: [Problem(title: "", description: "")])]
    
    // MARK: View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        connectModel()
    }
    
    private func setupTableView() {
        self.navigationItem.title = "\(make) \(model) \(generation)"
        
        // Make the row height dynamic
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func connectModel() {
        // Get Model name from the Make Model and Generation
        let modelName = "CarWiki.\(make)\(model)\(generation)".replacingOccurrences(of: " ", with: "")
        carModel = Bundle.main.classNamed(modelName) as! NSObject.Type
        if let carInfo = carModel as? CarModel.Type {
            carData = carInfo.getSections()
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let problemSection = carData[section]
        return problemSection.section.rawValue
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return carData.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let problemSection = carData[section]
        return problemSection.problems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailTableViewCell
        let problemSection = carData[indexPath.section]
        let problem = problemSection.problems[indexPath.row]
        
        cell.titleLabel.text = problem.title
        cell.descriptionLabel.text = problem.description
        
        return cell
    }
}
