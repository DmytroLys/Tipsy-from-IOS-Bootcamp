//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Dmytro on 05.08.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalValue = ""
    var stringSetings = ""
    
    // MARK: - IB Oultlets
    @IBOutlet private var totalLabel: UILabel!
    @IBOutlet private var settingsLabel: UILabel!
    
    
    // MARK: - IB Actions

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalValue
        settingsLabel.text = stringSetings

    }

}
