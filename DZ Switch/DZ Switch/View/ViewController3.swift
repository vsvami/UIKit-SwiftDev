//
//  ViewController3.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 27.07.23.
//

import UIKit

class ViewController3: UIViewController {

    let button = StyleButtom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Чек"
        
        createItemOfMenu(itemName: "Салат Цезарь", x: 40, y: 150, price: 300, descriptionItem: "Помидор, салат айсберг, сухарики, курица")
        createItemOfMenu(itemName: "Салат Нреческий", x: 40, y: 280, price: 400, descriptionItem: "Помидор, салат айсберг, сухарики, курица")
        
        button.styleAndPosition(text: "итого: 700 р.", x: 150, y: 700, width: 200, color: .systemGreen)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(successAlert(sender:)), for: .touchUpInside)
    }
    
    func createItemOfMenu(itemName: String, x: Int, y: Int, price: Int, descriptionItem: String) {
        let foodLabel = UILabel()
        let priceLabel = UILabel()
        let foodDescriptionLabel = UILabel()
        
        foodLabel.text = itemName
        foodLabel.frame = CGRect(x: x, y: y, width: 310, height: 50)
        foodLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        self.view.addSubview(foodLabel)
        
        priceLabel.text = String(price) + " p."
        priceLabel.textAlignment = .right
        priceLabel.frame = CGRect(x: (x + 215), y: y, width: 100, height: 50)
        priceLabel.textColor = .lightGray
        self.view.addSubview(priceLabel)
        
        foodDescriptionLabel.text = descriptionItem
        foodDescriptionLabel.frame = CGRect(x: x, y: (y + 30), width: 310, height: 50)
        foodDescriptionLabel.font = foodDescriptionLabel.font.withSize(14)
        foodDescriptionLabel.textColor = .lightGray
        self.view.addSubview(foodDescriptionLabel)
        
        let line = UIView(frame: CGRect(x: x, y: (y + 90), width: 310, height: 2))
        line.backgroundColor = .lightGray
        line.layer.opacity = 0.5
        self.view.addSubview(line)
    }
    
    @objc func successAlert(sender: Any) {
        
        let successAlert = UIAlertController(title: "Счет выставлен", message: nil, preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Ok", style: .default)
        
        successAlert.addAction(actionAlert)
        self.present(successAlert, animated: true)
    }
}
