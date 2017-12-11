//
//  ViewController.swift
//  Roommate-Login
//
//  Created by Sean McCarthy on 9/11/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInfoView: UIView!
    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var usernameVal: UILabel!
    @IBOutlet weak var userLoginButton: UIButton!
    let currentUser = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        userInfoView.isHidden=true
        AppUtility.lockOrientation(.portrait)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func aboutApplication(_ sender: Any) {
        let alert = UIAlertController(title: "About this App", message: "Sample Application to demonstrate some basic app functionality. 'Login' and then click next to view a nice picture", preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Close", comment: "Default action"), style: .`default`, handler: { _ in
            
            
        }))
        self.present(alert, animated: true, completion: nil)
        

    }

    @IBAction func loginFunc(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "Login", message: "", preferredStyle: .alert)
        alert.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Username"
        }
        alert.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Password"
        }
        
        let userTextField = alert.textFields![0]
        let passwordTextField = alert.textFields![1]
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Create Account", comment: "Default action"), style: .`default`, handler: { _ in
            
            self.currentUser.name = userTextField.text
            self.currentUser.password = passwordTextField.text
            
            self.usernameVal.text = userTextField.text
            self.userInfoView.isHidden = false
            
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
 
    /*
 
     
        */
    
}

