//
//  User.swift
//  session1_demo
//
//  Created by Shannon Phu on 3/28/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    var age: Int
    var points: Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        self.points = 0
    }
}
