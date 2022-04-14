//
//  ViewController.swift
//  Hello World
//
//  Created by Siddharth Gianey on 8/13/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convToDec(_ sender: Any) {
        output.text = ""
        var binaryNum = "\(input.text!)"
        binaryNum = String(binaryNum.reversed())
        let digits = Array(binaryNum)
        var index = 0
        var answer = 0
        for digit in digits {
            if (digit != "0" && digit != "1") {
                input.resignFirstResponder()
                output.text = "Not a valid input"
                return
            }
            if (digit == "1") {
                answer += Int(pow(2, Double(index)))
            }
            index += 1
        }
        input.resignFirstResponder()
        output.text = String(answer)
        
    }
    
    @IBAction func convToBin(_ sender: Any) {
        output.text = ""
        let decimalNum = "\(input.text!)"
        var decimalNumInt = Int(decimalNum) ?? 0
        if (decimalNumInt == 0) {
            input.resignFirstResponder()
            output.text = String("0")
            return
        }
        var answer = ""
        while (decimalNumInt != 1) {
            answer = String(decimalNumInt%2) + answer
            decimalNumInt = Int(decimalNumInt/2)
        }
        answer = String("1") + answer
        input.resignFirstResponder()
        output.text = String(answer)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        input.resignFirstResponder()
    }
    
}

