//
//  ViewController.swift
//  iospro2
//
//  Created by yclxiao on 2018/2/23.
//  Copyright © 2018年 yclxiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("convert viewcontroller did load")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldChanged(_ textField: UITextField) {
        
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = "result:\(text)"
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
}

