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
        
        changeLightsButton.setTitle("START", for: .normal)
    }

    @IBAction func startButtonPassed() {
        if changeLightsButton.currentTitle == "START" {
            redLightofTrafficView.alpha = 1
            changeLightsButton.setTitle("NEXT", for: .normal)
        }
        else if redLightofTrafficView.alpha == 1 {
            yellowLightOfTrafficView.alpha = 1
            redLightofTrafficView.alpha = 0.3
        }
        else if yellowLightOfTrafficView.alpha == 1 {
            greenLightOfTrafficView.alpha = 1
            yellowLightOfTrafficView.alpha = 0.3
        }
    }
}
