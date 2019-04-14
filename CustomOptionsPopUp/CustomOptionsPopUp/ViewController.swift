//
//  ViewController.swift
//  CustomOptionsPopUp
//
//  Created by Flavio Costa on 12/04/19.
//  Copyright © 2019 cappsule. All rights reserved.
//

import UIKit
import PopupDialog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showTable(_ sender: Any) {
        
       let popTableView = HostViewController(nibName:"HostViewController", bundle:nil)
        
        // Create the dialog
       let popup = PopupDialog(viewController: popTableView, tapGestureDismissal: false)
        
       present(popup, animated: true, completion: nil)
        
      
    }
    
}

