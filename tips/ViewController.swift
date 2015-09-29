//
//  ViewController.swift
//  tips
//
//  Created by Mac Vu on 9/29/15.
//  Copyright © 2015 Walmart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.25]
        let tipPer = tipPercentages[tipPercentage.selectedSegmentIndex]
    
        let billamt = NSString(string: billField.text!).doubleValue
        
        let tip = billamt * tipPer
        let total = billamt + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text =  String(format: "$%.2f", total)
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

