//
//  UserViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 17.12.2021.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userNameButton: UIButton!
    @IBOutlet weak var dateOfBirthButton: UIButton!
    @IBOutlet weak var occupationButton: UIButton!
    
    var user2: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = user2.person.nameAndSurname
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let aboutNameVC = segue.destination as? NameViewController {
        aboutNameVC.user3 = user2
        } else if let aboutDobVC = segue.destination as? DateOfBirthViewController {
            aboutDobVC.user4 = user2
            
        } else if let aboutSomeFactsVC = segue.destination as? SomeFactsViewController {
            aboutSomeFactsVC.user5 = user2
        }
    }
    @IBAction func showNameInfoAction(_ sender: UIButton) {
    }
    
    @IBAction func showDobAction() {
    }
    @IBAction func showOccupationAction() {
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
