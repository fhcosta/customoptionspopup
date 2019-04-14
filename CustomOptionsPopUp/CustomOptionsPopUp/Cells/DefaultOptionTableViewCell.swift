//
//  DefaultOptionTableViewCell.swift
//  CustomOptionsPopUp
//
//  Created by Flavio Costa on 12/04/19.
//  Copyright © 2019 cappsule. All rights reserved.
//

import UIKit

class DefaultOptionTableViewCell: UITableViewCell {

    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var optionImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
