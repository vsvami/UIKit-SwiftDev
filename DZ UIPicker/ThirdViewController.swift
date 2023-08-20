//
//  ThirdViewController.swift
//  DZ UIPicker
//
//  Created by Владимир Дмитриев on 20.08.23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let cancelButton = UIButton()
    let addButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        cancelButton.setTitle("Отмена", for: .normal)
        cancelButton.setTitleColor(.systemBlue, for: .normal)
        cancelButton.frame = CGRect(x: 15, y: 15, width: 100, height: 30)
        cancelButton.contentHorizontalAlignment = .left
        cancelButton.addTarget(self, action: #selector(pushCancelButton), for: .touchUpInside)

        self.view.addSubview(cancelButton)
        
        addButton.setTitle("Добавить", for: .normal)
        addButton.setTitleColor(.systemBlue, for: .normal)
        addButton.frame = CGRect(x: 270, y: 15, width: 100, height: 30)
        addButton.contentHorizontalAlignment = .right
        
        
        self.view.addSubview(addButton)
        
        
        
    }
    
    @objc func pushCancelButton() {
        dismiss(animated: true)
    }
}
