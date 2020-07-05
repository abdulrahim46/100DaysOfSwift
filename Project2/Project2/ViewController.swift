//
//  ViewController.swift
//  Project2
//
//  Created by Abdul chaudhary on 04/07/20.
//  Copyright © 2020 Abdul chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var totalQuestions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    func setUp() {
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestions()
        
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        var title: String
        var wrongAnswer: String
        wrongAnswer = countries[sender.tag]
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            let ac = UIAlertController(title: title, message: "Your Score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestions))
            present(ac, animated: true)
        } else {
            title = "Wrong"
            score -= 1
            let bc = UIAlertController(title: title, message: "That's the flag of \(wrongAnswer). Your Score is \(score)", preferredStyle: .alert)
            bc.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestions))
            present(bc, animated: true)
        }
        
    }
    
    
    func askQuestions(action: UIAlertAction! = nil) {
        totalQuestions += 1
        
        if totalQuestions == 10 {
            let ac = UIAlertController(title: "Thanks for Playing!", message: "Your final Score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Play Again", style: .default, handler: askQuestions))
            present(ac, animated: true)
        }
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
        if let navigationBar = self.navigationController?.navigationBar {
           let firstFrame = CGRect(x: 0, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
           var firstLabel = UILabel(frame: firstFrame)
           firstLabel.text = "Score is "+String(score)
           navigationBar.addSubview(firstLabel)
        }
    }


}

