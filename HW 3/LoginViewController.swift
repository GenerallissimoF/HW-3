//
//  ViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 13.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func forgotNameAletrAction(_ sender: UIButton) {
        let alert = UIAlertController.init(title: "Ooops!", message: "Your name is Ivan", preferredStyle: .alert)
        let alertButton = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertButton)
        present(alert, animated: true, completion: nil)
    }
    
}

