//
//  ViewController.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 02.07.23.
//

import UIKit

class ViewController: UIViewController {
    
    var myImageView = UIImageView()
    let logoImage = UIImage(named: "cloud")
    
    let companyLabel = UILabel()
    let singInTitle = StyleTitle()
    
    let mailLabel = StyleLabel()
    let mailTextField = StyleTextField()
    
    let passLabel = StyleLabel()
    let passTextField = StyleTextField()
    
    let buttomSingIn = StyleButtom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "VC"
        
//        MARK: - logo
        
        myImageView.frame = CGRect(x: 145, y: 70, width: 100, height: 100)
        myImageView.image = logoImage
        myImageView.layer.opacity = 0.3
        self.view.addSubview(myImageView)
        
//        MARK: - company
        
        companyLabel.text = "Company Apple"
        companyLabel.frame = CGRect(x: 130, y: 150, width: 200, height: 50)
        companyLabel.textColor = .lightGray
        companyLabel.font = companyLabel.font.withSize(18)
        
        self.view.addSubview(companyLabel)
        
//        MARK: - singInTitle
        
        singInTitle.style(textTitle: "Sing In", x: 40, y: 260)
        self.view.addSubview(singInTitle)
        
//        MARK: - mail
        
        mailLabel.styleAndPosition(textLabel: "Email", y: 320)
        self.view.addSubview(mailLabel)
        
        mailTextField.styleAndPosition(textPlaceholder: "example@mail.com", y: 360, secureText: false)
        self.view.addSubview(mailTextField)
        
//        MARK: - password
        
        passLabel.styleAndPosition(textLabel: "Password", y: 420)
        self.view.addSubview(passLabel)
        
        passTextField.styleAndPosition(textPlaceholder: "Password", y: 460, secureText: true)
        self.view.addSubview(passTextField)
        
//        MARK: - buttom
        
        buttomSingIn.styleAndPosition(text: "Войти", x: 40, y: 590, width: 310, color: .systemPink)
        self.view.addSubview(buttomSingIn)
        self.buttomSingIn.addTarget(self, action: #selector(buttonClick(sender:)) , for: .touchUpInside)
        
    }
    
    @objc func buttonClick(sender: Any) {
//        if mailTextField.text!.isEmpty || passTextField.text!.isEmpty {
//            let alert = UIAlertController(title: "Ошибка ввода", message: "Введите логин и пароль", preferredStyle: .alert)
//            let alertAction = UIAlertAction(title: "Ok", style: .default)
//            alert.addAction(alertAction)
//            self.present(alert, animated: true)
//        } else {
        let secondController = ViewController2()
//        present(secondController, animated: true, completion: nil)
        navigationController?.pushViewController(secondController, animated: true)
            print("hi")
//        }
    }
    
}
