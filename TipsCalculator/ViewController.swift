//
//  ViewController.swift
//  TipsCalculator
//
//  Created by Bao Pham on 8/19/15.
//  Copyright (c) 2015 Bao Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp_totalbill:Double! = 0
 

    @IBOutlet weak var txt_bill: UITextField!
    @IBOutlet weak var lbl_total: UILabel!
    @IBOutlet weak var lbl_tips: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    var defPercent:Int! = 0
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount:Double! = Double((txt_bill.text as NSString).doubleValue)
        let items = [0.10, 0.15, 0.20]
        let selectedPercent = items[tipPercent.selectedSegmentIndex]
        var tips = billAmount * selectedPercent
        var totalBill = billAmount + tips
        lbl_tips.text = String(format:"$ %.1f", tips)
        lbl_total.text = String(format:"$ %.1f", totalBill)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
                //Get default value from setting
        //tipPercent.selectedSegmentIndex = defPercent
        //Change keyboard layout to only display numeric
        txt_bill.keyboardType = UIKeyboardType.DecimalPad
        
        //refresh responder to change keyboard layout
        txt_bill.resignFirstResponder()
        txt_bill.becomeFirstResponder()
        tipPercent.selectedSegmentIndex = defPercent
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "loadSetting") {
            var svc = segue.destinationViewController as! settingController;
            svc.temp_totalbill = Double((txt_bill.text as NSString).doubleValue)
            
        }
    }



}

