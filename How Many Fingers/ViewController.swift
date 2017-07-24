//
//  ViewController.swift
//  How Many Fingers
//
//  Created by philip macairan on 5/6/16.
//  Copyright (c) 2016 bradex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guessButton(sender: UIButton) {
    
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = " Correct!"
                
            } else {
                
                resultLabel.text = " Nope! It was a \(randomNumber)"
                
            }
            
        } else {
        
            resultLabel.text = " Please enter a number 0 - 5"
            
        }
        
        println(guess.text)
        
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


