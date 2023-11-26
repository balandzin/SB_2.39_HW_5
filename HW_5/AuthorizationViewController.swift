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
        
    let userName = "User"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 195, green: 126, blue: 145, alpha: 1), UIColor(red: 105, green: 128, blue: 186, alpha: 1)]
        view.layer.addSublayer(gradientLayer)
        
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 😉" )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password 😉")
    }
    
    @IBAction func logInAction() {
        if userNameTextField.text != userName || passwordTextField.text != password {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



//let gradientLayer = CAGradientLayer()
//gradientLayer.frame = view.bounds
//gradientLayer.colors = [UIColor(red: 195, green: 126, blue: 145, alpha: 1), UIColor(red: 105, green: 128, blue: 186, alpha: 1)]
//view.layer.addSublayer(gradientLayer)

