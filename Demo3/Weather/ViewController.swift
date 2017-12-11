//
//  ViewController.swift
//  Weather
//
//  Created by Sean McCarthy on 11/14/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet var weatherLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global(qos: .userInitiated).async {
            var weather = Weather(city: "Woodland")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.weatherLabel.text = String(weather.getFahrenheit())
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

