//
//  SettingsViewController.swift
//  tips
//
//  Created by Sumanth on 12/31/15.
//  Copyright © 2015 Sumanth. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefaultTipSelection: UISegmentedControl!
    
    @IBOutlet weak var CurrencySelection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DefaultTipChanged(sender: AnyObject) {

        var tipIndex = DefaultTipSelection.selectedSegmentIndex
        var currencyIndex = CurrencySelection.selectedSegmentIndex
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipIndex, forKey: "default_tip_Index")
        defaults.setInteger(tipIndex, forKey: "default_currency_Index")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
