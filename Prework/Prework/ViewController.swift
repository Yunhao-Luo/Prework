//
//  ViewController.swift
//  Prework
//
//  Created by Luo on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splittingBill: UITextField!
    @IBOutlet weak var amountForEach: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipFromSlide: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
        self.billAmountTextField.keyboardType = .decimalPad
        self.splittingBill.keyboardType = .decimalPad
        self.tipSlider.value = (0.15);
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount from the text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * timPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let people_num = Double(splittingBill.text!) ?? 0
        let split = total / people_num
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String (format: "$%.2f", total)
    
        amountForEach.text = String(format: "$%.2f", split)
        
    }
    @IBAction func calculateTip_custumize(_ sender: UISlider) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * timPercentage
        let tip = bill * Double(sender.value)
        let total = bill + tip
        let people_num = Double(splittingBill.text!) ?? 0
        let split = total / people_num
        
        tipFromSlide.text = String(format: "%.0f%%", Double(sender.value)*100)
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String (format: "$%.2f", total)
    
        amountForEach.text = String(format: "$%.2f", split)
    }
    
}

