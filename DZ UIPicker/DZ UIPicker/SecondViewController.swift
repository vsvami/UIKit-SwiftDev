//
//  ViewControllerSecond.swift
//  DZ UIPicker
//
//  Created by Владимир Дмитриев on 19.08.23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
    }
    
    @objc func addTapped() {
        let thirdViewController = ThirdViewController()
        present(thirdViewController, animated: true)
//        navigationController?.pushViewController(thirdViewController, animated: true)
    }
    

}
