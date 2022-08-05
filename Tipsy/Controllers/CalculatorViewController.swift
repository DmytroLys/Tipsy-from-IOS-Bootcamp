//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.10
    
    // MARK: - IBLabels
    @IBOutlet private var billTextField: UITextField!
    @IBOutlet private var zeroPctButton: UIButton!
    @IBOutlet private var tenPctButton: UIButton!
    @IBOutlet private var twentyPctButton: UIButton!
    @IBOutlet private var splitNumberLabel: UILabel!
    
    // MARK: - IBActions
    @IBAction private func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let currentTitle = sender.currentTitle!
        let titleWithoutPct = String(currentTitle.dropLast())
        let titleAsNumber = Double(titleWithoutPct)!
        tip = titleAsNumber / 100
        

        
        
    }
    @IBAction private func stepperValueChanged(_ sender: UIStepper) {
    }
    @IBAction private func calculatePressed(_ sender: UIButton) {
    print(tip)
    }
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}

