//
//  GreetingViewController.swift
//  HW_5
//
//  Created by Антон Баландин on 26.11.23.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet weak var backgroundGradientView: UIView!
    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackgroundColor()
        
        greetingLabel.text = greeting
    }
    
    private func setBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(
                red: 195/255,
                green: 126/255,
                blue: 145/255,
                alpha: 1
            ).cgColor,
            UIColor(red: 105/255, green: 128/255, blue: 186/255, alpha: 1).cgColor
        ]
        gradientLayer.shouldRasterize = true
        backgroundGradientView.layer.addSublayer(gradientLayer)
    }
    
    
    
}
