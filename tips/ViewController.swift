//
//  ViewController.swift
//  tips
//
//  Created by Sumanth on 12/15/15.
//  Copyright © 2015 Sumanth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipRate = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string:   billField.text!).doubleValue
        var tipAmount = billAmount * tipRate
        var total = billAmount + tipAmount
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

