//
//  DemoPrototypeCell.swift
//  Demo2
//
//  Created by Sean McCarthy on 12/4/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit

class DemoPrototypeCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
