//
//  ViewController.swift
//  HW_5
//
//  Created by Антон Баландин on 25.11.23.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let barViewControllers = segue.destination as? UITabBarController else { return }
        guard let greetingVC = barViewControllers.viewControllers![0] as? GreetingViewController else { return }
        greetingVC.greeting = user.userName
        greetingVC.fullName = "\(user.person.name) \(user.person.surname)"
        
        guard let navigationVC = barViewControllers.viewControllers![1] as? UINavigationController else { return }
        let informationVC = navigationVC.topViewController as! InformationViewController
        informationVC.name = user.person.name
        informationVC.surname = user.person.surname
        informationVC.age = user.person.age
        informationVC.country = user.person.country
        informationVC.city = user.person.city
        informationVC.hobbies = user.person.hobbies
        informationVC.work = user.person.work
        
//        bioVC.large = "\(user.person.name) \(user.person.surname) Bio"
//        bioVC.small = "Some information"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.userName) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        userNameTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
