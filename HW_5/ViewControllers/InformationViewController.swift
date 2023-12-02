//
//  InformationViewController.swift
//  HW_5
//
//  Created by Антон Баландин on 2.12.23.
//

import UIKit

final class InformationViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    
    var name: String!
    var surname: String!
    var age: String!
    var country: String!
    var city: String!
    var hobbies: String!
    var work: String!
    
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
        
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        countryLabel.text = country
        cityLabel.text = city
        hobbiesLabel.text = hobbies
        workLabel.text = work
    }
    
}
