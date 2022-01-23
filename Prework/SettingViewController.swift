//
//  SettingViewController.swift
//  Prework
//
//  Created by Luo on 1/17/22.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data_tip.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow Row: Int, forComponent component: Int) -> String? {
        return data_tip[Row]
    }

    
    @IBOutlet weak var TipPicker: UIPickerView!
    @IBOutlet weak var DefaultCurrency: UISegmentedControl!
    let data_tip = ["15%", "18%", "20%"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TipPicker.dataSource = self
        TipPicker.delegate = self
        // Do any additional setup after loading the view.
        // Sets the title in the Navigation Bar
        self.title = "Setting"
    }
    
    @IBAction func SetCurrency(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
