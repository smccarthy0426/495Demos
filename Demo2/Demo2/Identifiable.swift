//
//  Identifiable.swift
//  Demo2
//
//  Created by Sean McCarthy on 12/1/17.
//  Copyright © 2017 Sean McCarthy. All rights reserved.
//

import Foundation
@objc protocol Identifiable{
    var fullName: String { get }
    
    func getDescription() -> String
    @objc optional func getFavoriteItem()
}
