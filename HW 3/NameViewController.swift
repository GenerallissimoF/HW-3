//
//  nameViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 18.12.2021.
//

import UIKit

class NameViewController: UIViewController {
    var user2: User!
    @IBOutlet weak var nameInfoTF: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       nameInfoTF.text = user2.person.dateOfbirth
    }
    

}
