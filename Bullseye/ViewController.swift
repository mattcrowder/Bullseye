//
//  ViewController.swift
//  Bullseye
//
//  Created by Matt Crowder on 10/28/19.
//  Copyright © 2019 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello, World!", message: "This is my first app!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func knockKnock() {
        let alert = UIAlertController(title: "Who's there?", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Butts", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }


}

