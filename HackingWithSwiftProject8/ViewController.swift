//
//  ViewController.swift
//  HackingWithSwiftProject8
//
//  Created by Chen, Sihan on 2020-04-15.
//  Copyright © 2020 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        // Placing the score label at the top right
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        // Align on the right
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        view.addSubview(scoreLabel)
        
        // Using NSLayoutConstraint.activate() method instead of isActive = true
        // This is an array therefore comma needs to be applied
        NSLayoutConstraint.activate([
            
            // layoutMarginsGuide --> a little bit distance from the right edge of screen
           scoreLabel.topAnchor.constraint(equalTo:
        view.layoutMarginsGuide.topAnchor),
           
           scoreLabel.trailingAnchor.constraint(equalTo:
        view.layoutMarginsGuide.trailingAnchor),
           
           
           
           
        ])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

