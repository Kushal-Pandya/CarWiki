//
//  ModelTableViewController.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-17.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit

class ModelTableViewController: UITableViewController {
    
    var make: String = ""
    var models: [String] = []
    
    // Generations
    let generations: [String: [String: String]] = [
        "Accord": ["7th Generation": "2003-2007", "8th Generation": "2008-2012", "9th Generation": "2013-2017"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        models.sort()
        self.navigationItem.title = "Select \(make) Model"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = models[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = models[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let carGeneration = generations[model] {
            if let controller = storyboard.instantiateViewController(withIdentifier: "generationTableViewController") as? GenerationTableViewController {
                
                controller.generations = carGeneration
                controller.make = make
                controller.model = model
                navigationController?.pushViewController(controller, animated: true)
            }
        } else if let controller = storyboard.instantiateViewController(withIdentifier: "comingSoonViewController") as? ComingSoonViewController {
            navigationController?.pushViewController(controller, animated: true)
        }
        
    }

}
