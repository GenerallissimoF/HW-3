//
//  OccupationViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 19.12.2021.
//

import UIKit

class SomeFactsViewController: UIViewController {
    
    @IBOutlet weak var someFactsLabel: UILabel!
    
    var user5: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Some facts"
        someFactsLabel.text = user5.person.someFacts
    }
}
