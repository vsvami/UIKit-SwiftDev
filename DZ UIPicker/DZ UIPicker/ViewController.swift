//
//  ViewController.swift
//  DZ UIPicker
//
//  Created by Владимир Дмитриев on 13.08.23.
//

import UIKit

class ViewController: UIViewController {

    let birthdayReminderLabel = UILabel()
    let singInLabel = UILabel()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let faceIDLabel = UILabel()
    let faceIDSwitch = UISwitch()
    let singInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayReminderLabel.text = "Birthday Reminder"
        birthdayReminderLabel.textColor = #colorLiteral(red: 0.5872525573, green: 0.7356036901, blue: 0.968429625, alpha: 1)
        birthdayReminderLabel.textAlignment = .center
        birthdayReminderLabel.frame = CGRect(x: 105, y: 100, width: 180, height: 70)
        birthdayReminderLabel.layer.borderWidth = 1
                
        self.view.addSubview(birthdayReminderLabel)
        
        singInLabel.text = "Sing In"
        singInLabel.frame = CGRect(x: 40, y: 220, width: 200, height: 50)
        singInLabel.font = UIFont(name: "Helvetica-Bold", size: 28)
        
        self.view.addSubview(singInLabel)
        
        addTitle(label: emailLabel, title: "Email", y: 280)
        addTextField(textField: emailTextField ,placeholder: "Example@email.com", y: 310)
        
        addTitle(label: passwordLabel, title: "Password", y: 370)
        addTextField(textField: passwordTextField, placeholder: "Password", y: 400)
        passwordTextField.isSecureTextEntry = true
        addShowButton(textField: passwordTextField, img: "eye")
        
        addTitle(label: faceIDLabel, title: "Вход по Face ID", y: 500)
        faceIDLabel.frame = CGRect(x: 140, y: 490, width: 200, height: 50)
        
        faceIDSwitch.frame = CGRect(x: 290, y: 500, width: 100, height: 50)
        
        self.view.addSubview(faceIDSwitch)
        
        singInButton.setTitle("Войти", for: .normal)
        singInButton.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        singInButton.tintColor = .white
        singInButton.frame = CGRect(x: 40, y: 580, width: 305, height: 50)
        singInButton.layer.cornerRadius = 5
        singInButton.backgroundColor = #colorLiteral(red: 0.5872525573, green: 0.7356036901, blue: 0.968429625, alpha: 1)
        singInButton.addTarget(self, action: #selector(clickButton(sender:)), for: .touchUpInside)
        
        self.view.addSubview(singInButton)
        
    }
    
    @objc func clickButton(sender: Any) {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func addTitle(label: UILabel, title: String, y: Int) {
        label.text = title
        label.textColor = #colorLiteral(red: 0.5872525573, green: 0.7356036901, blue: 0.968429625, alpha: 1)
        label.font = UIFont(name: "Helvetica-Bold", size: 18)
        label.frame = CGRect(x: 40, y: y, width: 200, height: 50)
        
        self.view.addSubview(label)
    }
    
    func addTextField(textField: UITextField, placeholder: String, y: Int) {
        
        textField.placeholder = placeholder
        textField.frame = CGRect(x: 40, y: y, width: 305, height: 50)
        self.view.addSubview(textField)
        
        let line = UIView()
        line.frame = CGRect(x: 40, y: y + 50, width: 305, height: 2)
        line.backgroundColor = .lightGray
        self.view.addSubview(line)
    }
    
    @objc func showPasswordButtonTapped() {
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    func addShowButton(textField: UITextField, img: String) {
        
        let showPasswordButton = UIButton(type: .custom)
        showPasswordButton.setImage(UIImage(named: img), for: .normal)
        showPasswordButton.frame = CGRect(x: 10, y: 5, width: 30, height: 30)
        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonTapped), for: .touchUpInside)
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        imageViewContainerView.addSubview(showPasswordButton)
        textField.rightView = imageViewContainerView
        textField.rightViewMode = .always
    }

}

