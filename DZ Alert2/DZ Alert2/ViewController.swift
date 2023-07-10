//
//  ViewController.swift
//  DZ Alert2
//
//  Created by Владимир Дмитриев on 30.06.23.
//

import UIKit

class ViewController: UIViewController {

//    MARK: - view
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    MARK: - controller
    @IBAction func startButton(_ sender: Any) {
        let alert = UIAlertController(title: "Input text", message: "leohl", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alert.textFields?.first?.text
            
            let convText = Model()
            self.textLabel.text! += convText.convertText(text)
            
        }
        
        alert.addTextField()
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    

//    MARK: - model
    struct Model {
        func convertText (_ text: String?) -> String {
            var result = ""
            if let value = text {
                if value == "leohl" {
                    result = "hello"
                } else {
                    result = "Unknow text"
                }
            }
            return result
        }
    }

}

