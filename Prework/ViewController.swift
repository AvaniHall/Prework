//
//  ViewController.swift
//  Prework
//
//  Created by test on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel:UILabel!
    @IBOutlet weak var billLabel:UITextField!
    @IBOutlet weak var tipControlLabel:
        UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        //once action is completed, remove dial pad
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //gets the bill and calculates the tip
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        //calculate the tip and total price
        let tip = bill * tipPercentages[tipControlLabel.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

