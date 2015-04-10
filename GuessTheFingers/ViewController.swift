//
//  ViewController.swift
//  GuessTheFingers
//
//  Created by Adnan Aziz on 4/9/15.
//  Copyright (c) 2015 Adnan Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessNumber: UITextField!
    
    @IBOutlet weak var rightGuessLabel: UILabel!
    
    @IBAction func play(sender: AnyObject) {
    
        var randomNumber = arc4random_uniform(6)

        var usersGuessNumber = guessNumber.text.toInt()

        if (usersGuessNumber != nil) {
            if (usersGuessNumber == Int(randomNumber)) {
                rightGuessLabel.text = "Right Guess!!!"
                rightGuessLabel.textColor = UIColor.greenColor()
            }
            else {
                rightGuessLabel.text = "Try Again..."
                rightGuessLabel.textColor = UIColor.redColor()
            }
        }
        else {
            rightGuessLabel.text = "Please enter a number 0-5"
            rightGuessLabel.textColor = UIColor.blackColor()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

