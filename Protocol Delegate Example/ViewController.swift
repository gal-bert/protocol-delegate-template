//
//  ViewController.swift
//  Protocol Delegate Example
//
//  Created by Gregorius Albert on 17/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        let secondView = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondView.resultDelegate = self
        present(secondView, animated: true)
    }

}

extension ViewController: SendResult {
    
    func sendResult(result: String) {
        textLabel.text = result
    }
    
}

