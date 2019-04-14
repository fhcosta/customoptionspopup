//
//  CancelTableViewCell.swift
//  CustomOptionsPopUp
//
//  Created by Flavio Costa on 12/04/19.
//  Copyright © 2019 cappsule. All rights reserved.
//

import UIKit

class CancelTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTouchCancel(_ sender: Any) {
        
        print("Touch Cancel")
        
    }
    
    
}
