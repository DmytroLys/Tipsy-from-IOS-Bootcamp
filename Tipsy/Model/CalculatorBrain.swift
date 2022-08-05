//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Dmytro on 05.08.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var valueToPay: String?
    
    mutating func getValueToPay (sum: Double, persons: Double, tip: Double) -> String {
        let number = (sum * (1.0 + tip)) / persons
        valueToPay = String(format: "%.2f", number)
        return valueToPay ?? "0.0"
    }
    
}
