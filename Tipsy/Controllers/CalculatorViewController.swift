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
    var totalAmount = 0.0
    var numberOfPersons = 2.0
    var brain = CalculatorBrain()
    
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
    
    var tapGesture = UIGestureRecognizer()
    
    @IBAction private func stepperValueChanged(_ sender: UIStepper) {
        sender.minimumValue = 2
        numberOfPersons = sender.value
        splitNumberLabel.text = String(format: "%.f", numberOfPersons)
    }
    @IBAction private func calculatePressed(_ sender: UIButton) {
        print(tip)
        print(String(format: "%.f", numberOfPersons))
        if let amount = Double(billTextField.text!) {
            totalAmount = amount
        }
    }
    
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTappped(_:)))
        view.addGestureRecognizer(tapGesture)
        view.isUserInteractionEnabled = true
        
        
    }
    
    @objc func viewTappped(_ sender : UITapGestureRecognizer) {
        billTextField.endEditing(true)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.totalValue = brain.getValueToPay(sum: totalAmount, persons: numberOfPersons, tip: tip)
            destination.stringSetings = "Split between \(Int(numberOfPersons)) peoples, with \(Int(tip * 100))% tip"
        }
    }
    
}

