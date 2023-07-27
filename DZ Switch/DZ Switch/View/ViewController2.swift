//
//  ViewController2.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 26.07.23.
//

import UIKit

class ViewController2: UIViewController {

    let fioLabel = StyleLabel()
    let fioTextField = StyleTextField()
    
    let guestsLabel = StyleLabel()
    let guestsTextField = StyleTextField()
    
    let tableLabel = StyleLabel()
    let tableTextField = StyleTextField()
    
    let reservLabel = StyleLabel()
    let reservSwitch = UISwitch()
    
    let prepaidLabel = StyleLabel()
    let prepaidSwitch = UISwitch()
    
    let vipLabel = StyleLabel()
    let vipSwitch = UISwitch()
    
    let billButton = StyleButtom()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        MARK: - title
        
        self.title = "Cafe Mario"
        
//        MARK: - fio
        
        fioLabel.styleAndPosition(textLabel: "Фио", y: 130)
        self.view.addSubview(fioLabel)
        
        fioTextField.styleAndPosition(textPlaceholder: "Введите ФИО", y: 170, secureText: false)
        self.view.addSubview(fioTextField)
        
//        MARK: - guests
        
        guestsLabel.styleAndPosition(textLabel: "Количество гостей", y: 230)
        self.view.addSubview(guestsLabel)
        
        guestsTextField.styleAndPosition(textPlaceholder: "Введите количество", y: 270, secureText: false)
        self.view.addSubview(guestsTextField)
        
//        MARK: - guests

        tableLabel.styleAndPosition(textLabel: "Номер стола", y: 330)
        self.view.addSubview(tableLabel)
        
        tableTextField.styleAndPosition(textPlaceholder: "Стол номер", y: 370, secureText: false)
        self.view.addSubview(tableTextField)
        
//        MARK: - reservation
        
        reservLabel.styleAndPosition(textLabel: "Бронировали стол?", y: 460)
        self.view.addSubview(reservLabel)

        reservSwitch.frame = CGRect(x: 300, y: 470, width: 100, height: 70)
        self.view.addSubview(reservSwitch)
        
//        MARK: - prepaid
        
        prepaidLabel.styleAndPosition(textLabel: "Предоплата?", y: 530)
        self.view.addSubview(prepaidLabel)
        
        prepaidSwitch.frame = CGRect(x: 300, y: 540, width: 100, height: 70)
        self.view.addSubview(prepaidSwitch)
        
//        MARK: - vip room
        
        vipLabel.styleAndPosition(textLabel: "VIP комната?", y: 610)
        self.view.addSubview(vipLabel)
        
        vipSwitch.frame = CGRect(x: 300, y: 620, width: 100, height: 70)
        self.view.addSubview(vipSwitch)
        
//        MARK: - bill button
        
        billButton.styleAndPosition(text: "Выставить счет?", x: 40, y: 700, width: 310, color: .systemPink)
        self.view.addSubview(billButton)
        billButton.addTarget(self, action: #selector(bill(sender:)), for: .touchUpInside)
        
    }
    
    @objc func bill(sender: Any) {
        
        let billAlert = UIAlertController(title: "Выставить счет?", message: nil, preferredStyle: .alert)
        
        if fioTextField.text!.isEmpty || guestsTextField.text!.isEmpty || tableTextField.text!.isEmpty {
            billAlert.message = "Заполнены не все поля. Отменить?"
        }
        
        let okActionAlert = UIAlertAction(title: "Чек", style: .default) { (action) in
            let thirdController = ViewController3()
            self.navigationController?.pushViewController(thirdController, animated: true)
        }
        
        let cancelActionAlert = UIAlertAction(title: "Отмена", style: .cancel)
        
        billAlert.addAction(okActionAlert)
        billAlert.addAction(cancelActionAlert)
        
        self.present(billAlert, animated: true)
        
    }
    
}
