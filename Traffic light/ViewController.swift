//
//  ViewController.swift
//  Traffic light
//
//  Created by Vlad Vinogrotskiy on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    enum buttonCondition {
        case red
        case yellow
        case green
    }

    var condition: buttonCondition = .red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = 75
        yellowColor.layer.cornerRadius = 75
        greenColor.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 35
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    }

    @IBAction func tappedStartButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        
        switch condition {
        case .red:
            redColor.alpha = 1
            condition = .yellow
        case .yellow:
            yellowColor.alpha = 1
            condition = .green
        case .green:
            greenColor.alpha = 1
            condition = .red
        }
        
    }
        
}
