//
//  ViewController.swift
//  tipper
//
//  Created by Dane Acena on 7/27/20.
//  Copyright © 2020 daneography. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    var tipPercentages = [0.10,0.15,0.20]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmount.text = String(100)
        totalBill(self)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func totalBill(_ sender: Any) {
        let bill  = Double(billAmount.text!) ?? 0
        let tip   = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipValue.text = String(format: "$%.2f",tip)
        totalAmount.text = String(format: "$%.2f",total)
    }
    
    @IBAction func settingsButtonTapped(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "mainToSettings", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

