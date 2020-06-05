
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
    
    
    //Picker View
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
            print("From Country: ", fromCountry.text!)
            self.view.endEditing(false)
            
        }else if pickerView == toPickView {
            toCountry.text = countryList2[row]
            print("To Country: ", toCountry.text!)
            self.view.endEditing(false)
        }
    }
    
    
    //Display API
    @IBAction func conversion(_ sender: Any) {
        guard let url = URL(string: "http://data.fixer.io/api/latest?access_key=1aa05abc802308a285acfb75012b7d22") else {
            return
        }
        
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            
            if let data = data{
                print(data)
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    
                } catch{
                    print(error)
                }
            }
        }.resume()
    }
    
        
}





