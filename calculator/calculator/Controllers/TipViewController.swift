//
//  TipViewController.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    //Mark: Outlets
    @IBOutlet weak var appTitleLabel: AppNameLabel!
    @IBOutlet weak var billLabel: TipLabel!
    @IBOutlet weak var tipLabel: TipLabel!
    @IBOutlet weak var tipAmountLabel: TipLabel!
    @IBOutlet weak var totalLabel: TipLabel!
    @IBOutlet weak var fifteenButton: TipButton!
    @IBOutlet weak var eighteenButton: TipButton!
    @IBOutlet weak var twentyButton: TipButton!
    @IBOutlet weak var tipAmountSumLabel: UILabel!
    @IBOutlet weak var totalSumLabel: UILabel!
    @IBOutlet weak var billTextField: TipTextField!
    
    
    //Mark: LifeCycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
// Mark: Helper Methods
    func setupViews() {
        self.view.backgroundColor = .backgroundColor
    }
    
    func tipCalculator(percentage: Double) {
        
        guard let input: Double = Double(billTextField.text!) else { return }
        
        let tipSum = input * percentage
        
        let doubleFormat = ".2"
        let totalSum = tipSum + input
        
        let tipAmount = tipSum.format(f: doubleFormat)
        let totalAmount = totalSum.format(f: doubleFormat)
        
        tipAmountSumLabel.text = "$ " + tipAmount
        totalSumLabel.text = "$ " + totalAmount
    }
    
// Mark- Actions
    @IBAction func fifteenButtonTapped(_ sender: Any) {
        tipCalculator(percentage: 0.15)
    }
    
    @IBAction func eighteenButtonTapped(_ sender: Any) {
        tipCalculator(percentage: 0.18)
    }
    
    @IBAction func twentyButtonTapped(_ sender: Any) {
        tipCalculator(percentage: 0.20)
    }
}
