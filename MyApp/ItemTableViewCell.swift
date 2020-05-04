//
//  ItemTableViewCell.swift
//  MyApp
//
//  Created by Bogdan Donea on 19/04/2020.
//  Copyright © 2020 Bogdan Donea. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
