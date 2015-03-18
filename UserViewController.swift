//
//  UserViewController.swift
//  tips
//
//  Created by John Walecka on 3/16/15.
//  Copyright (c) 2015 John Walecka. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var defaultTipPercent: UISegmentedControl!
    
    @IBAction func newDefault(sender: UISegmentedControl) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipPercent.selectedSegmentIndex, forKey: "tipDefault")
        defaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        defaultTipPercent.selectedSegmentIndex = defaults.integerForKey("tipDefault")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
