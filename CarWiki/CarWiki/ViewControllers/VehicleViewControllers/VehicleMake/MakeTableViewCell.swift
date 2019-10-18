//
//  MakeTableViewCell.swift
//  CarWiki
//
//  Created by Kushal Pandya on 2019-09-17.
//  Copyright © 2019 Kushal Pandya. All rights reserved.
//

import UIKit

class MakeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var makeImageView: UIImageView!
    @IBOutlet weak var makeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
