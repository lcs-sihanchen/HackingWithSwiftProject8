//
//  ViewController.swift
//  HackingWithSwiftProject8
//
//  Created by Chen, Sihan on 2020-04-15.
//  Copyright © 2020 Chen, Sihan. All rights reserved.
//  Based on the knowledge in Project 6
//  Page 301 for user interface

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
        
        
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        // System font is whatever that is standard today
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        view.addSubview(cluesLabel)
        
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)
        answersLabel.text = "ANSWERS"
        answersLabel.numberOfLines = 0
        answersLabel.textAlignment = .right
        view.addSubview(answersLabel)
        
        // Using NSLayoutConstraint.activate() method instead of isActive = true
        // This is an array therefore comma needs to be applied
        NSLayoutConstraint.activate([
            
            // layoutMarginsGuide --> a little bit distance from the right edge of screen
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            // Clues label's top anchor should be pinned at the bottom of the score label
            // Label 100 points from the left edge to make it look better
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor,
                                                constant: 100),
            
            // Clues label is 60 percent of the width in layout margins guide
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            // top of the answer label should be bottom of the score label
            answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            
            // 100 points from the right edge
            answersLabel.trailingAnchor.constraint(equalTo:
                view.layoutMarginsGuide.trailingAnchor, constant: -100),
            
            // make the answers label take up 40% of the available space minus 100 points from the edge
            answersLabel.widthAnchor.constraint(equalTo:
                view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant:
                -100),
            
            // answers height anchor should be equal to clues height anchor
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor)
            
            
        ])
        
        cluesLabel.backgroundColor = .red
        answersLabel.backgroundColor = .blue
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

