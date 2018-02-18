//
//  ViewController.swift
//  Smart Start
//
//  Created by Amir Ahmed on 2018-02-17.
//  Copyright © 2018 Amir Ahmed. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    // OUTLETS
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var engineStateLabel: UILabel!
    
    // VARIABLES
    var flag : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeButtonShadow(_ sender: UIButton){
        
        if(flag == false){
            startButton.layer.shadowColor = UIColor.cyan.cgColor
            startButton.layer.shadowOffset = CGSize(width: 1, height: 1)
            startButton.layer.shadowRadius = 10
            startButton.layer.shadowOpacity = 1.0
            flag = true
            engineStateLabel.text = "STOP"
        }
        else{
            startButton.layer.shadowOpacity = 0.0
            flag = false
            engineStateLabel.text = "START"
        }
    }
}

