//
//  ViewController.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 02.07.23.
//

import UIKit

class ViewController: UIViewController {
    
    let companyLabel = UILabel()
    let singInTitle = StyleTitle()
    
    let mailLabel = StyleLabel()
    let mailTextField = StyleTextField()
    
    let passLabel = StyleLabel()
    let passTextField = StyleTextField()
    
    let buttomSingIn = StyleButtom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
    }
    
}
