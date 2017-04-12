//
//  ViewController.swift
//  Test
//
//  Created by Omar Ozgur on 4/12/17.
//  Copyright © 2017 oozgur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    let initialTime: Int = 10

    var user: User = User(name: "Placeholder", age: 0)
    var timer: Timer = Timer()
    var running = false
    var time = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        user = User(name: "Omar", age: 21)
        nameLabel.text = "Name: \(user.name)"
        ageLabel.text = "Age: \(user.age)"
        scoreLabel.text = "Score: \(user.score)"
        timeLabel.text = "Time: \(time)"
    }
    
    @IBAction func addButton(_ sender: Any) {
        if running {
            user.score += 1
            scoreLabel.text = "Score: \(user.score)"
        }
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        if running {
            user.score -= 1
            scoreLabel.text = "Score: \(user.score)"
        }
    }
    
    @IBAction func startButton(_ sender: Any) {
        if !running {
            user.score = 0
            scoreLabel.text = "Score: \(user.score)"
            time = initialTime
            timeLabel.text = "Time: \(time)"
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            running = true
        }
    }
    
    func timerAction() {
        time -= 1
        timeLabel.text = "Time: \(time)"
        if time == 0 {
            timer.invalidate()
            running = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

