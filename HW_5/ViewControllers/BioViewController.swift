//
//  BioViewController.swift
//  HW_5
//
//  Created by Антон Баландин on 2.12.23.
//

import UIKit

final class BioViewController: UITabBarController {
    
    @IBOutlet var largeLabel: UILabel!
    @IBOutlet var smallLabel: UILabel!
    
//    var large: String!
//    var small: String!
    
    var user: User!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        // Не могу понять, почему сюда не попадают данные
        largeLabel.text = "\(user.person.name) \(user.person.surname)"
        largeLabel.text = "\(user.person.name) \(user.person.surname) and some text"
    }
    


}
