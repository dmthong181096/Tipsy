//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Thông Đoàn on 06/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit
struct TipsyBrain {
    
    var tipsy:Tipsy?
    
    mutating func calculateTipsy(bill: Float, tip: Float , split: Int) -> Float {
        let total = (bill + (bill*tip)/100)/Float(split)
        tipsy = Tipsy(bill: bill, tip: tip, split: split, total: total)
        return  (tipsy?.total)!
    }
    
    func getTotalBillResults() -> String {
        return String(format: "%.1f", tipsy?.total as! CVarArg)
    }
    func getBill() -> String {
        return String(format: "%.1f", tipsy?.bill as! CVarArg)
    }
    func getTip() -> String {
        return String(format: "%.0f", tipsy?.tip as! CVarArg)
    }
    func getSplit() -> String {
        return String(format: "%.0f", tipsy?.split as! CVarArg)
    }

    
    
    
    
    
    
    
    
}
