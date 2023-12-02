//
//  BioViewController.swift
//  HW_5
//
//  Created by Антон Баландин on 2.12.23.
//

import UIKit

class BioViewController: UITabBarController {
    
    
    @IBOutlet var largeLabel: UILabel!
    @IBOutlet var smallLabel: UILabel!
    
    var large: String!
    var small: String!
    
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
        
//        largeLabel.text = large
//        largeLabel.text = small
    }
    


}
