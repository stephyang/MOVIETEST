//
//  SecondViewController.swift
//  MOVIETEST
//
//  Created by stephanie yang on 2016/3/28.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    @IBOutlet weak var signTextField: UITextField!
    @IBOutlet weak var showSignTextView: UITextView!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    var signs: [String] = []{
        
        didSet {
//     joinWithSeparator 將Array 轉成字串後可依照條件分割
           showSignTextView.text = signs.joinWithSeparator("\n")
        }
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        signTextField.text = ""
        showSignTextView.text = ""
        errorMessageLabel.text = "名字不能留白"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//   按下畫面任何一個地方收起鍵盤
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        signTextField.resignFirstResponder()
    }
    
    
    @IBAction func savesignBtn(sender: AnyObject) {
        
        
        if signs.count>2{
        errorMessageLabel.text = "只能簽三筆"
        
        }
        else{
        let sign = signTextField.text
            signs.append(sign!)
            signTextField.text = ""
            
            
        
        }
        
    
    }

}

