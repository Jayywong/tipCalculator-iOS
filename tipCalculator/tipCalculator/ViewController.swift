//
//  ViewController.swift
//  tipCalculator
//
//  Created by Jason Wong on 12/20/16.
//  Copyright © 2016 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField! //text field var
    @IBOutlet weak var tipLabel: UILabel! // tiplabel
    @IBOutlet weak var totalLabel: UILabel! // total label
    @IBOutlet weak var tipSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        self.billField.becomeFirstResponder() //makes numpad pop up when launch
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //tap func(): tap anywhere on view to remove onscreen keyboard
    @IBAction func onTap(_ sender: AnyObject) {
        //force stop editting
        view.endEditing(true);
    }
    
    //change values of tip and total as bill amount is being typed
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentages[tipSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

