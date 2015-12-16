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
        
        var billAmount = NSString(string:  billField.text!).doubleValue
        var tipAmount = billAmount * 0.2
        var total = billAmount + tipAmount
        
        tipLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
        
    }

}

