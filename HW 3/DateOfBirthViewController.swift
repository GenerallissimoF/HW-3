//
//  DateOfBirthViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 19.12.2021.
//

import UIKit

class DateOfBirthViewController: UIViewController {
    @IBOutlet weak var dobLable: UILabel!
   
    var user4: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "День рождения"
        dobLable.text = user4.person.dateOfbirth
        // Do any additional setup after loading the view.
    }

}
