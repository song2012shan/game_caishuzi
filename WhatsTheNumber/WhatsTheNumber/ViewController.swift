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
    var maxnumber = 100
    var minnumber = 1
    

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
           messageLabel.text = "值为空，请输入数字1～100"
            
        }else{
            if inputNumber! > maxnumber{
                messageLabel.text = "值太大，大于\(maxnumber)请输入数字1～100"
            }else if inputNumber! < minnumber{
               messageLabel.text = "值太小,小于\(minnumber)请输入数字1～100"
            }else
            {
                if inputNumber! == answer {
                    messageLabel.text = "你回答正确"
                }else{
                    messageLabel.text = "回答错误，再试一次"
                }
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //让键盘跳出来
       // inputTextField.becomeFirstResponder()
    }


}

