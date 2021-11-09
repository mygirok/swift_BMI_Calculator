//
//  ViewController.swift
//  bmi
//
//  Created by forworkyong on 2021/11/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clacBmi(_ sender: UIButton) {
        let height = Double(txtHeight.text!)!
        let weight = Double(txtWeight.text!)!
        print(height, weight)
        
        let bmi = weight / (height * height * 0.0001)
        let shortenedBmi = String(format: "%.1f", bmi)
        var body  = ""
        if bmi >= 40 {
            body = "Class III"
        } else if bmi >= 30 && bmi < 40 {
            body = "Class II"
        } else if bmi >= 25 && bmi < 30 {
            body = "Class I"
        } else if bmi >= 18.5 && bmi < 25 {
            body = "Normal range"
        } else {
            body = "Underweight"
        }
        
        print("BMI: \(shortenedBmi), Category: \(body)")
    }
    

}

