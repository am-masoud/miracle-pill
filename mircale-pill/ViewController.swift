//
//  ViewController.swift
//  mircale-pill
//
//  Created by amir masoud mohtaji on 6/21/17.
//  Copyright © 2017 amir masoud mohtaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var choosestatepicker: UIPickerView!
    @IBOutlet weak var choosestatepickerbtn: UIButton!
    let states = ["salam","bia","boro","naro","hala"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        choosestatepicker.dataSource=self
        choosestatepicker.delegate=self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cyhpressed(_ sender: AnyObject) {
        
        }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states [row]
    }
    

}

