//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#colorLiteral(red: 0, green: 0.7306863666, blue: 0.8045918345, alpha: 1),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    let ballImages = [
        UIImage(imageLiteralResourceName: "ball1"),
        UIImage(imageLiteralResourceName: "ball2"),
        UIImage(imageLiteralResourceName: "ball3"),
        UIImage(imageLiteralResourceName: "ball4"),
        UIImage(imageLiteralResourceName: "ball5"),
    ]
    
    @IBOutlet weak var magicBallImageView: UIImageView!
    @IBOutlet weak var askButtonView: UIButton!
    
    @IBAction func askButtonTouchDown(_ sender: UIButton) {
        askButtonView.alpha = 0.75
    }
    @IBAction func askButtonTouchUp(_ sender: UIButton) {
        askButtonView.alpha = 1.0
        magicBallImageView.image = ballImages.randomElement()
    }


}

