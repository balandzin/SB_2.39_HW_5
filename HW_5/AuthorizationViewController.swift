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
            
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingVC = segue.destination as? GreetingViewController
        greetingVC?.greeting = "Welcome, \(userNameTextField.text ?? "")"
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(userName) 😉" )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func logInAction() {
        if userNameTextField.text != userName || passwordTextField.text != password {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let greetingVC = segue.source as? GreetingViewController
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
            self.userNameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

