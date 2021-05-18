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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = 85
        yellowColor.layer.cornerRadius = 85
        greenColor.layer.cornerRadius = 85
        startButton.layer.cornerRadius = 20
        
        
    }

    @IBAction func tappedStartButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
    }
}
    

