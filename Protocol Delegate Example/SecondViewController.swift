//
//  SecondViewController.swift
//  Protocol Delegate Example
//
//  Created by Gregorius Albert on 17/07/22.
//

import UIKit

protocol SendResult {
    func sendResult(result:String)
}

class SecondViewController: UIViewController {
    
    var resultDelegate: SendResult!

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
        let result = textField.text
        resultDelegate.sendResult(result: result!)
        dismiss(animated: true)
    }
    
}
