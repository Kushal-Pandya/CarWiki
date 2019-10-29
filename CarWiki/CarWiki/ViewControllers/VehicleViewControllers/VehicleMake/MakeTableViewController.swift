//
//  MakeTableViewController.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-17.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit

class MakeTableViewController: UITableViewController {
    
    var makes: [String] = ["Honda", "Toyota", "Ford", "Nissan", "Chevrolet", "Dodge"]
    let models: [String: [String]] = [
        "Honda": ["Accord", "Civic", "CR-V", "Odyssey", "Pilot"],
        "Ford": ["F Series"],
        "Chevrolet": ["Silverado"],
        "Dodge": ["Ram"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        makes.sort()
        self.navigationItem.title = "Select a Make"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return makes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MakeTableViewCell else {
            fatalError("The dequeued cell is not an instance of MakeTableViewCell.")
        }
        
        cell.makeLabel.text = makes[indexPath.row]
        cell.makeImageView.image = UIImage(named: makes[indexPath.row].lowercased())
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let make = makes[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "modelTableViewController") as? ModelTableViewController {
            if let carModels = models[make] {
                controller.models = carModels
            }
            controller.make = make
            navigationController?.pushViewController(controller, animated: true)
        }
    }

}
