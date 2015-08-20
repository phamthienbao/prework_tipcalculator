//
//  settingController.swift
//  
//
//  Created by Bao Pham on 8/20/15.
//
//

import UIKit

class settingController: UIViewController {

    @IBOutlet weak var defaultValue: UISegmentedControl!
    var defVal:Int!
    var temp_totalbill:Double!
    var getTempBill:Double! = 0
    @IBAction func def_tipPercent(sender: AnyObject) {
        
        var defVal = defaultValue.selectedSegmentIndex
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "loadMainForm") {
            var svc = segue.destinationViewController as! ViewController;
            svc.defPercent = defaultValue.selectedSegmentIndex
            svc.temp_totalbill = getTempBill
           
        }
    }

}
