//
//  GenerationTableViewController.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-24.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit

class GenerationTableViewController: UITableViewController {

    var make: String = ""
    var model: String = ""
    var generations: [String: String] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Select a Generation"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return generations.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let genName = Array(generations.keys)[indexPath.row]
        
        cell.textLabel?.text = genName
        cell.detailTextLabel?.text = generations[genName]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let generation = Array(generations.keys)[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "detailsTableViewController") as? DetailsTableViewController {
            
            controller.make = make
            controller.model = model
            controller.generation = generation
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
}
