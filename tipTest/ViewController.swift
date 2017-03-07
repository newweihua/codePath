//
//  ViewController.swift
//  tipTest
//
//  Created by Weihua Zhang on 3/5/17.
//  Copyright © 2017 Weihua Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    @IBOutlet weak var tipPercent: UISlider!
    @IBOutlet weak var splitNum: UISlider!
    
    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        
        let maxTipPercent = defaults.object(forKey: "maxTipPercent") as? String ?? "50"
        print(maxTipPercent)
        
        tipPercent.maximumValue = Float(maxTipPercent) ?? 50
        
        let maxSplit = defaults.object(forKey: "maxSplitNumber") as? String ?? "4"
        print(maxSplit)
        splitNum.maximumValue = Float(maxSplit) ?? 4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func amountChanged(_ sender: AnyObject) {
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * Double(Int(tipPercent.value)) / 100
        let total = bill + tip
        let split = total / Double(Int(splitNum.value))
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f",total)
        splitAmount.text = String(format: "$%.2f",split)
        
        tipPercentLabel.text = String(format: "%d%%", Int(tipPercent.value))
        splitLabel.text = String(format: "%d", Int(splitNum.value))
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
   
   
}

