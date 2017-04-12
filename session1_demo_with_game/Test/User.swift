//
//  User.swift
//  Test
//
//  Created by Omar Ozgur on 4/12/17.
//  Copyright © 2017 oozgur. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    var age: Int
    var score: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
