//
//  WelcomeViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeUserLabel: UILabel!
    var user1: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(user1.login)"
        self.title = "home"
        
    }
    
    
}
