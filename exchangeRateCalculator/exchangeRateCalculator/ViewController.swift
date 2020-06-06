//
//  ViewController.swift
//  exchangeRateCalculator
//
//  Created by Jian Qi on 6/6/20.
//  Copyright © 2020 Jian Qi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var myCurrency: [String] = []
    var myValue: [Double] = []
    var activeCurrency:Double = 0;
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func convertButton(_ sender: UIButton) {
        if(input.text != ""){
            output.text = String(Double(input.text!)! * activeCurrency)
        }
    }
    
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myCurrency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myCurrency[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeCurrency = myValue[row]
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=1aa05abc802308a285acfb75012b7d22")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error ) in
            if error != nil{
                print("Error happened")
                
            } else{
                if let content = data{
                    do{
                        let jsonInfo = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        if let rates = jsonInfo["rates"] as? NSDictionary{
                            
                            for(key, value) in rates{
                                self.myCurrency.append((key as? String)!)
                                self.myValue.append((value as? Double)!)
                            }
                            
                            print(self.myCurrency)
                            print(self.myValue)
                        }
                        
                    } catch {
                        print("Error!!")
                    }
                }
            }
            self.pickerView.reloadAllComponents()
        }
        task.resume()
        

    }


}

