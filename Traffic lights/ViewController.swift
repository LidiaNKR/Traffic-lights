//
//  ViewController.swift
//  Traffic lights
//
//  Created by Лидия Ладанюк on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightofTrafficView: UIView!
    @IBOutlet var yellowLightOfTrafficView: UIView!
    @IBOutlet var greenLightOfTrafficView: UIView!
    
    @IBOutlet var changeLightsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightofTrafficView.alpha = 0.3
        redLightofTrafficView.layer.cornerRadius = 50
        
        yellowLightOfTrafficView.alpha = 0.3
        yellowLightOfTrafficView.layer.cornerRadius = 50
        
        greenLightOfTrafficView.alpha = 0.3
        greenLightOfTrafficView.layer.cornerRadius = 50
    }



    @IBAction func startButtonPassed() {
        if redLightofTrafficView.alpha != 0 {
            redLightofTrafficView.alpha = 1
            changeLightsButton.setTitle("NEXT", for: .normal)
        }
        else if yellowLightOfTrafficView.alpha != 0 {
            redLightofTrafficView.alpha = 0.3
            yellowLightOfTrafficView.alpha = 1
            changeLightsButton.setTitle("NEXT", for: .normal)
        }
        else if greenLightOfTrafficView.alpha != 0 {
            yellowLightOfTrafficView.alpha = 0.3
            greenLightOfTrafficView.alpha = 1
            changeLightsButton.setTitle("NEXT", for: .normal)
        }
    }
}
