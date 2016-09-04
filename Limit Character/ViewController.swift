//
//  ViewController.swift
//  Limit Character
//
//  Created by NXA on 4/9/16.
//  Copyright © 2016 NXA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let NewLength = (tf.text?.characters.count)! + string.characters.count - range.length
        
        print(range.length)
        
        return NewLength <= 5
    }

}

