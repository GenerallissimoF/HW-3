//
//  ViewController.swift
//  HW 3
//
//  Created by Ivan Adoniev on 13.12.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
  
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let user = User(login: "Ivan", password: "777", person: User.getPerson())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.delegate = self
        passwordTF.delegate = self
        userNameTF.autocapitalizationType = .none
    // делаем кнопку return неактивной
        
        passwordTF.enablesReturnKeyAutomatically = true
        userNameTF.enablesReturnKeyAutomatically = true
    }
   // убираем клавиатуру тапом за пределы текстфилд
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        super .touchesBegan(touches, with: event)
    }
    // выводим приветствие на второй вьюконтроллер
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        if let viewControllers = tabBarController.viewControllers {
        for viewController in viewControllers {
            if let newVC = viewController as? WelcomeViewController {
                newVC.welcomeVC = "Welcome, \(userNameTF.text!)"
                
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! UserViewController
                aboutUserVC.userVC = "\(userNameTF.text!) Adoniev"
                
            } else if let navigationVCforName = viewController as? UINavigationController {
                let aboutNameVC = navigationVCforName.topViewController as! NameViewController
                aboutNameVC.user2 = user
               
                }
            }
        }
        }
                // переходим на второй вьюконтроллер нажатием на done (ну и еще кое-что)
                
                func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                    if textField == userNameTF {
                        passwordTF.becomeFirstResponder()
                    } else {
                        chekUserNameAndPassword()
                        passwordTF.text = ""
                        performSegue(withIdentifier: "WelcomeViewController", sender: self)
                    }
        return true
    }
    //меняем кнопку клавиатуры на next
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        userNameTF.returnKeyType = .next
    return true
    }
    // меняем кнопку клавиатуры на done
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        passwordTF.returnKeyType = .done
        
    }
    
    // уведомления при забытом пароле или имени
    
    @IBAction func forgotNameAletrAction(_ sender: UIButton) {
        allertWithButton(alertTitle:"Ooops😈!", titleMessage: "Your name is \(user.login)", buttonTitle: "Ok")
    }
    @IBAction func forgotPasswordAlert(_ sender: UIButton) {
        allertWithButton(alertTitle: "Ooops😈!", titleMessage: "Your password is \(user.password)", buttonTitle: "Ok")
    }
    
    // упрощенная проверка на валидность и переход на второй VC. Не очень элегантно, но не было времени
    
    @IBAction func loginActionButton(_ sender: UIButton) {
        chekUserNameAndPassword()
    }
    
    // возврат на первый VC
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        passwordTF.text = nil
        userNameTF.text = nil
        
    }
    
   // метод по вызову уведомлений
   private func allertWithButton(alertTitle: String, titleMessage: String, buttonTitle: String) {
        let alert = UIAlertController.init(title: alertTitle, message: titleMessage, preferredStyle: .alert)
        let alertButton = UIAlertAction.init(title: buttonTitle, style: .default, handler: nil)
        alert.addAction(alertButton)
        present(alert, animated: true, completion: nil)
}
    // упрощенная проверка на валидность и переход на второй VC. Не очень элегантно, но не было времени
   private func chekUserNameAndPassword () {
       if passwordTF.text != user.password || userNameTF.text != user.login {
            if passwordTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userNameTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
                allertWithButton(alertTitle: "Warrning!", titleMessage: "All fields must be filled", buttonTitle: "Ok")
            }
            allertWithButton(alertTitle: "Uncorrect username or password", titleMessage: "Please, try again", buttonTitle: "Ok")
        }
    }
}


