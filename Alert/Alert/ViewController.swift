//
//  ViewController.swift
//  Alert
//
//  Created by Владимир Дмитриев on 28.06.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func showButton(_ sender: Any) {
//        let alertController = UIAlertController(title: "Error", message: "Ahtung!", preferredStyle: .alert)
//
//        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
//            let text = alertController.textFields?.first?.text
//            print(text ?? "nil text")
//        }
//
//        alertController.addTextField(configurationHandler: nil)
//        alertController.addAction(action)
//        self.present(alertController, animated: true, completion: nil)
//    }
    
//    @IBAction func showButton(_ sender: Any) {
//        let alertController = UIAlertController(title: "Error", message: "Ahtung!", preferredStyle: .actionSheet)
//
//        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
//
//        }
//
//        alertController.addAction(action)
//        self.present(alertController, animated: true, completion: nil)
//    }

    @IBAction func showButton(_ sender: Any) {
        
        self.hiLabel.text = "Hi, "
        self.alert(title: "Внимание", message: "Введите ваше имя", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
       
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLabel.text! += ((text?.text!)!) + ("!")
        }
        
        alertController.addTextField { (textField) in
            textField.isSecureTextEntry = true
        }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}

