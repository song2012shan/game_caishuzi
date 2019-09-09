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
    var isOver = false
    
    

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuss(_ sender: UIButton) {
        if isOver == false {
            
            print(answer)
            let inputText = inputTextField.text!
            print("input text = \(inputText)")
            //clear textfield
            inputTextField.text = ""
            
            let inputNumber = Int(inputText)
            if inputNumber == nil{
                //no input
                messageLabel.text = "不可以为空请输入数字1～100"
                
            }else{
                if inputNumber! > maxnumber{
                    messageLabel.text = "超出数字范围，大于\(maxnumber)请输入数字1～100"
                }else if inputNumber! < minnumber{
                    messageLabel.text = "超出数字范围，小于\(minnumber)请输入数字1～100"
                }else
                {
                    if inputNumber! == answer {
                        messageLabel.text = "《大吉》\n请点击Guess进入新游戏"
                        isOver = true
                    }else{
                        messageLabel.text = "《中吉》，再试一次"
                    }
                }
            }
            
        }else{
           maxnumber = 100
           minnumber = 1
           messageLabel.text = "值为空，请输入数字1～100"
           answer = Int.random(in: 1...100)
            //如果不把is Over设置回去false就无法继续循环
            isOver = false
        }
 
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //让键盘跳出来
       // inputTextField.becomeFirstResponder()
    }


}

