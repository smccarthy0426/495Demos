//
//  userProfileViewController.swift
//  Roommate-Login
//
//  Created by Sean McCarthy on 9/13/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import Foundation


import UIKit

class userProfileViewController: UIViewController {
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var username = ""
    var password = ""
    
      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
