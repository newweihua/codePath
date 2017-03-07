//
//  SettingsViewController.swift
//  tipTest
//
//  Created by Weihua Zhang on 3/6/17.
//  Copyright © 2017 Weihua Zhang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var maxTipPercent: UITextField!
    @IBOutlet weak var maxSplitNumber: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        
        defaults.set(maxTipPercent.text, forKey: "maxTipPercent")
        defaults.set(maxSplitNumber.text, forKey: "maxSplitNumber")
        defaults.synchronize()
        super.viewWillDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
