//
//  ViewController.swift
//  DZ Alert
//
//  Created by Владимир Дмитриев on 29.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fioLabel: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    MARK: - dz-2
    
    override func viewDidAppear(_ animated: Bool) {
        self.alertWelcome(title: "Hello", message: "What's your name?", style: .alert)
    }
    
//    MARK: - dz-1
    @IBAction func sumAction(_ sender: Any) {
        self.alertAdding(title: "summary", message: "Input numbers", style: .alert)
    }
    
    func alertWelcome(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.fioLabel.text! += (text?.text!)!
        }
        alertController.addTextField()
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
//    MARK: - dz-3
    
    func alertAdding(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "sum", style: .default ) { (action) in
            let firstNumber = alertController.textFields?[0]
            let secondNumber = alertController.textFields?[1]
            let sum = Int(firstNumber?.text ?? "0")! + Int(secondNumber?.text ?? "0")!
            self.sumLabel.text! += String(sum)
        }
        
        alertController.addTextField()
        alertController.addTextField()
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
//    MARK: - dz-4
    
    @IBAction func whatNumber(_ sender: Any) {
        let defaultNumber = 7
        
        let alertController = UIAlertController(title: "Number", message: "Input your number", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = Int(alertController.textFields?.first?.text ?? "0")
            if text == defaultNumber {
                self.numLabel.text! += String(text!)
            } else {
                let alrt = UIAlertController(title: "Error", message: "Input new number", preferredStyle: .alert)
                self.present(alrt, animated: true)
                let action = UIAlertAction(title: "ok", style: .cancel)
                alrt.addAction(action)
                self.numLabel.text! = "Number: "
            }
            
            
        }
        
        alertController.addTextField()
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
}

