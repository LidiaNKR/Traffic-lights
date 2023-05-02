//
//  ViewController.swift
//  Traffic lights
//
//  Created by Лидия Ладанюк on 27.01.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightsButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightsButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }

    @IBAction func startButtonPassed() {
        if changeLightsButton.currentTitle == "START" {
            changeLightsButton.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLightView.alpha = lightOff
            redLightView.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
            currentLight = .red
        }
    }
}
