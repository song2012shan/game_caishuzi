//
//  ViewController.swift
//  WhatsTheNumber
//
//  Created by 孙红艳 on 2019/09/09.
//  Copyright © 2019 孙红艳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var answer = Int.random(in: 1...100)

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuss(_ sender: UIButton) {
        print(answer)
         let inputText = inputTextField.text!
        print("input text = \(inputText)")
        //clear textfield
       inputTextField.text = ""
        
        let inputNumber = Int(inputText)
        if inputNumber == nil{
            //no input
            print("no input")
            
        }else{
            if inputNumber! > 100{
                print("Too large")
            }else if inputNumber! < 1{
                print("Too small")
            }else{
                print("check answer")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //让键盘跳出来
       // inputTextField.becomeFirstResponder()
    }


}

