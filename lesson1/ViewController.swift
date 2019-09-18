//
//  ViewController.swift
//  lesson1
//
//  Created by Oleh Lutsyk on 9/17/19.
//  Copyright © 2019 Oleh Lutsyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstlight: UIView!
    @IBOutlet weak var secondlight: UIView!
    @IBOutlet weak var thirdlight: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        firstlight.layer.cornerRadius = 50
        secondlight.layer.cornerRadius = 50
        thirdlight.layer.cornerRadius = 50

        button.layer.cornerRadius = 10
    }

    @IBAction func button_pressed() {
        
        if firstlight.alpha < 0.4 && secondlight.alpha < 0.4   {


        firstlight.alpha = 1
            thirdlight.alpha = 0.3
            button.setTitle("Next", for: .normal) }
        else {
            if secondlight.alpha < 0.4 && thirdlight.alpha < 0.4 {
                
                secondlight.alpha = 1
                firstlight.alpha = 0.3}
            else{
                
                if firstlight.alpha < 0.4 && thirdlight.alpha < 0.4 {
                    
                    thirdlight.alpha = 1
                    secondlight.alpha = 0.3

                }
            }
        
        
    }
    
}
}

