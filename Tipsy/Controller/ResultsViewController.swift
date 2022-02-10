//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Thông Đoàn on 06/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var totalResult:String?
    var billResults:String?
    var tipResult:String?
    var splitResult:String?
    
    @IBOutlet weak var infoBillResultLabel: UILabel!
    @IBOutlet weak var totalBillResultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalBillResultsLabel.text = totalResult
        infoBillResultLabel.text = "Bill is \(billResults!)$ Split between \(splitResult!) people, with \(tipResult!)% tip."
    }
    

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
