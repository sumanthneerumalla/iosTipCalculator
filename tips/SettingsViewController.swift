//
//  SettingsViewController.swift
//  tips
//
//  Created by Sumanth on 12/31/15.
//  Copyright © 2015 Sumanth. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var tipIndex = 0
    var currencyIndex = 0

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

        tipIndex = DefaultTipSelection.selectedSegmentIndex
        currencyIndex = CurrencySelection.selectedSegmentIndex
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipIndex, forKey: "default_tip_Index")
        defaults.setInteger(currencyIndex, forKey: "default_currency_Index")
        defaults.synchronize()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        tipIndex = defaults.integerForKey("default_tip_rate")
        DefaultTipSelection.selectedSegmentIndex = tipIndex
        currencyIndex = defaults.integerForKey("default_currency_Index")
        CurrencySelection.selectedSegmentIndex = currencyIndex
        defaults.synchronize()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
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
