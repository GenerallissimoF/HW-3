//
//  UserViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 17.12.2021.
//

import UIKit

class UserViewController: UIViewController {
    var userVC: String!
    
  
    @IBOutlet weak var userNameButton: UIButton!
    @IBOutlet weak var dateOfBirthButton: UIButton!
    @IBOutlet weak var homeToneButton: UIButton!    
    @IBOutlet weak var educationButton: UIButton!
    @IBOutlet weak var occupationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = userVC
    }

    @IBAction func showNameInfoAction(_ sender: UIButton) {
        
    }
    
}
@IBDesignable extension UIButton {

    @IBInspectable var cornerRadius: CGFloat {
       set {
           layer.cornerRadius = newValue
       }
       get {
           return layer.cornerRadius
       }
   }
}
