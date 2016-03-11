//
//  menuViewTableViewCell.swift
//  BBF
//
//  Created by ankit on 10/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit

class menuViewTableViewCell: UITableViewCell {

    @IBOutlet weak var slideLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureForAnimal(animal: MenuArray) {
        slideLabel.text = animal.title
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
