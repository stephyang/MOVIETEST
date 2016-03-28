//
//  SecondViewController.swift
//  MOVIETEST
//
//  Created by stephanie yang on 2016/3/28.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

protocol DetailDelegate {
    func nameChanged(new_name:String)
}


class SecondViewController: UIViewController {

    @IBOutlet weak var signTextField: UITextField!
    
    @IBOutlet weak var printsignLabel: UILabel!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func savesignBtn(sender: AnyObject) {
    }

}

