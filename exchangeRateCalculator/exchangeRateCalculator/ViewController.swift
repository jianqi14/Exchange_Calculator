
//
//  ViewController.swift
//  exchangeRateCalculator
//
//  Created by Jian Qi on 5/3/20.
//  Copyright © 2020 Jian Qi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var fromCountry: UITextField!
    @IBOutlet weak var toCountry: UITextField!
    
    
    let fromPickView = UIPickerView()
    let toPickView = UIPickerView()
    
    let countryList1 = ["United States", "China", "Canada", "Australia", "Korea", "Singapore"]
    let countryList2 = ["United States", "China", "Canada", "Australia", "Korea", "Singapore"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromPickView.dataSource = self
        fromPickView.delegate = self
        
        toPickView.dataSource = self
        toPickView.delegate = self
        
        fromPickView.tag = 1
        toPickView.tag = 2;
        
        fromCountry.inputView = fromPickView
        toCountry.inputView = toPickView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        if pickerView == fromPickView {
            return countryList1.count
            
        }else if pickerView == toPickView {
            return countryList2.count
            
        }
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == fromPickView {
            return countryList1[row]
            
        } else if pickerView == toPickView {
            return countryList2[row]
            
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == fromPickView {
            fromCountry.text = countryList1[row]
            self.view.endEditing(false)
            
        }else if pickerView == toPickView {
            toCountry.text = countryList2[row]
            self.view.endEditing(false)
        }
    }

}





