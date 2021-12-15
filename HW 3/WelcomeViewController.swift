//
//  WelcomeViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeUserLabel: UILabel!
    var welcomeVC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = welcomeVC

    }
    
    
}
