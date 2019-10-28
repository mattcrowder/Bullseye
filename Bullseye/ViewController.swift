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
        showAlert(title: "Hello, World!", actionTitle: "Awesome", message: "This is my first app!")
    }

    func showAlert(title: String, actionTitle: String, message: String? = nil, preferredStyle: UIAlertController.Style = .alert) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let action = UIAlertAction(title: actionTitle, style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

