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
    @IBOutlet weak var tipPercentSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func amountChanged(_ sender: AnyObject) {
        let tipScale = [0.15, 0.2, 0.25]
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * tipScale[tipPercentSeg.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f",total)
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
   
   
}

