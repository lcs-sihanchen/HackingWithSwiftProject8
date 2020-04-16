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
    
    // Store things as properties allow you to make changes later on
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        // MARK: Labels
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
        
        // MARK: Textfield
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        // 居中
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        // Users can interact with the textfield so now it becomes a label with placeholder
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        // MARK: Buttons
        //1. Buttons have various built-in styles, but the ones you’ll most commonly use are .custom and .system. We want the default button style here, so we’ll use .system.
        //2. We need to use setTitle() to adjust the title on the button, just like we did with setImage() in project 2.
        
        // These buttons are not properties since they won't change later
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("Submit", for: .normal)
        view.addSubview(submit)
        
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("Clear", for: .normal)
        view.addSubview(clear)
        
        
        // Add a view to host all the buttons
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
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
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
            // current answer should be centered in the view, but only 50% of the width, below the clues label 20 points
            // can't use centerYAnchor because the labels might be overlapped
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
            
            // set clear button's YAnchor constraint to the submit button, in that way if you move one of these buttons, the other one will move as well
            // both buttons will be centered but 100 points apart to avoid overlapping
            // force both buttons to have a height of 44 points in order to be touched easily
            
            submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            submit.heightAnchor.constraint(equalToConstant: 44),
            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clear.centerYAnchor.constraint(equalTo: submit.centerYAnchor),
            clear.heightAnchor.constraint(equalToConstant: 44),
            
            // Constraints for buttonsView
            // width 750 height 320
            // centered horizontally
            // top anchor to be 20 points below the bottom of the submit button
            // pin it to the bottom of our layout margins guide plus 20 points for space
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20)
            
        ])
        
        cluesLabel.backgroundColor = .red
        answersLabel.backgroundColor = .blue
        
        //
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

