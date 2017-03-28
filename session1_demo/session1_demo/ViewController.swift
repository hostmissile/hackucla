//
//  ViewController.swift
//  session1_demo
//
//  Created by Shannon Phu on 3/28/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    var user: User = User(name: "Shannon", age: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.nameLabel.text = self.user.name
        self.ageLabel.text = "\(self.user.age)"
        self.pointsLabel.text = "\(self.user.points)"
    }

    @IBAction func incrementPoints(_ sender: Any) {
        self.user.points += 1
        self.pointsLabel.text = "\(self.user.points)"
    }
    
    @IBAction func decrementPoints(_ sender: Any) {
        self.user.points -= 1
        self.pointsLabel.text = "\(self.user.points)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

