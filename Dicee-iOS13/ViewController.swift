//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftImageView.image = UIImage(named: "1.png")
        rightImageView.image = UIImage(named: "2.png")
    }
    
    @IBAction func rollOnPressed(_ sender: UIButton) {
        let leftDice = Int.random(in: 1...6)
        var rightDice = Int.random(in: 1...6)
        if leftDice == rightDice{
            rightDice = Int.random(in: 1...6)
        }
                leftImageView.image = UIImage(named: "\(leftDice).png")
                rightImageView.image = UIImage(named: "\(rightDice).png")
    }
    
}

