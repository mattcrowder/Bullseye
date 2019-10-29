//
//  ViewController.swift
//  Bullseye
//
//  Created by Matt Crowder on 10/28/19.
//  Copyright © 2019 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue: Int = 0
    var scoreValue: Int = 0
    var roundValue: Int = 1
    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        resetScore()
    }
    
    @IBAction func startOver() {
        
        startNewRound()
        resetScore()
    }
    @IBAction func showAlert() {
        let difference = 100 - abs(currentValue - targetValue)
        
        
        let additionalPoints = difference == 100 ? 100 : difference == 99 ? 50 : 0;
        let message = "You hit \(currentValue)" + "\nYou scored \(difference + additionalPoints)!"
        let title: String
        if difference == 100 {
            title = "Perfect!"
        } else if difference > 95, difference < 100 {
            title = "You almost had it!"
        } else if difference > 89, difference < 96 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        updateScore(score: difference + additionalPoints)
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        roundValue += 1
        roundLabel.text = String(roundValue)
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func updateScore(score: Int) {
        scoreValue = scoreValue + score
        scoreLabel.text = String(scoreValue)
    }
    func resetScore() {
        scoreValue = 0
        scoreLabel.text = String(scoreValue)
        roundValue = 1
        roundLabel.text = String(roundValue)
    }
}

