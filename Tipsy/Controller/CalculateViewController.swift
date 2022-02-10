//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTf: UITextField!
    @IBOutlet weak var splitLb: UILabel!
    var bill:Float?
    var split: Float?
    var tip:String?
    var total:Float?
    var tipsy = TipsyBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        tip = sender.currentTitle
        tip?.removeLast()
    }
    
    @IBAction func splitChange(_ sender: UIStepper) {
        splitLb.text = String(format: "%.0f", sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        bill = Float(billTf.text!)
        split = Float(splitLb.text!)
        
        print(bill)
        print(Float(tip!)!)
        print(split)
        total = tipsy.calculateTipsy(bill: bill!, tip: Float(tip!)!, split: Int(split!))
        performSegue(withIdentifier: "goToResults", sender: nil)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalResult = tipsy.getTotalBillResults()
            destinationVC.billResults = tipsy.getBill()
            destinationVC.tipResult = tipsy.getTip()
            destinationVC.splitResult = tipsy.getSplit()
        }
    }
}

