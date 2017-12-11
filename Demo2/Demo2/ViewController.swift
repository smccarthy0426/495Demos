//
//  ViewController.swift
//  Demo2
//
//  Created by Sean McCarthy on 11/28/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButton(_ sender: Any) {
        let vc = TwoViewController(nibName: "TwoViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)

    }
    
}

