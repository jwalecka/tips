//
//  ViewController.swift
//  tips
//
//  Created by John Walecka on 3/14/15.
//  Copyright (c) 2015 John Walecka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        var defaults = NSUserDefaults.standardUserDefaults()
        var tipIndex = defaults.integerForKey("tipDefault")
        tipControl.selectedSegmentIndex = tipIndex
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
    
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipPercentage =
                tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2#f", tip)
        totalLabel.text = String(format: "$%.2#f", total)
        
    }
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

}

