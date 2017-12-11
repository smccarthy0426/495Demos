//
//  Weather.swift
//  Weather
//
//  Created by Sean McCarthy on 11/14/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import Foundation
import Alamofire

class Weather {
    var fahrenheit: Double = 0
    
    init(city: String) {
        Alamofire.request(
            URL(string: "https://api.wunderground.com/api/1667f515226edc80/conditions/q/CA/\(city).json")!,
            method: .get
            )
            .validate()
            .responseJSON { (response) -> Void in
                guard response.result.isSuccess else {
                    print("Error while making request: \(response.result.error!)")
                    return
                }
                
                let json = response.result.value as? [String: Any]
                let curr = json?["current_observation"] as? [String: Any]
                
                print(curr!["temp_f"]!)
                
                self.fahrenheit = curr!["temp_f"]! as! Double
        }
    }
    
    func getFahrenheit() -> Double {
        return fahrenheit
    }
}
