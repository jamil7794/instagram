//
//  HomeVC.swift
//  instagram
//
//  Created by Jamil Jalal on 9/29/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func logoutBtn(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("didLogout"), object: nil)
    }
    
    
}
