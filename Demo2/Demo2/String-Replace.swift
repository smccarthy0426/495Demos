//
//  String-Replace.swift
//  Demo2
//
//  Created by Sean McCarthy on 12/4/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import Foundation


extension String {
    
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
}
