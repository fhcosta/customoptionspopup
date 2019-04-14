//
//  HostViewController.swift
//  CustomOptionsPopUp
//
//  Created by Flavio Costa on 12/04/19.
//  Copyright © 2019 cappsule. All rights reserved.
//

import UIKit

class HostViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "DefaultOptionTableViewCell", bundle: nil), forCellReuseIdentifier: "Default")
        tableView.register(UINib(nibName: "TitleTableViewCell", bundle: nil), forCellReuseIdentifier: "Title")
        tableView.register(UINib(nibName: "CancelTableViewCell", bundle: nil), forCellReuseIdentifier: "Cancel")
    }

    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PopUpItems.allCases.count + 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) as! TitleTableViewCell
            return cell
        }else if indexPath.row == PopUpItems.allCases.count + 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cancel", for: indexPath) as! CancelTableViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Default", for: indexPath) as! DefaultOptionTableViewCell
            
            let currentOption = PopUpItems.allCases[indexPath.row-1]
            
            switch currentOption {
            case .OptionOne:
                cell.optionLabel.text = "Option One"
                cell.optionImageView.image = UIImage(named: "alert")
            case .OptionTwo:
                cell.optionLabel.text = "Option Two"
                cell.optionImageView.image = UIImage(named: "age")
            case .OptionThree:
                cell.optionLabel.text = "Option Three"
                cell.optionImageView.image = UIImage(named: "bully")
            case .OptionFour:
                cell.optionLabel.text = "Option Four"
                cell.optionImageView.image = UIImage(named: "user")
            }
            
            return cell
        }
        
    }
    
}
