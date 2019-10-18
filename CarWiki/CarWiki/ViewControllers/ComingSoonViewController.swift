//
//  ComingSoonViewController.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-10-17.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit

class ComingSoonViewController: UIViewController {

    @IBOutlet weak var comingSoonImage: UIImageView!
    @IBOutlet weak var comingSoonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        comingSoonLabel.text = "The team is currently hard at work to bring you information about this car!"
        comingSoonLabel.numberOfLines = 0
    }

}
