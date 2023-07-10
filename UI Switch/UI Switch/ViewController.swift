//
//  ViewController.swift
//  UI Switch
//
//  Created by Владимир Дмитриев on 30.06.23.
//

import UIKit

class ViewController: UIViewController {
    
//    let mySwitch = UISwitch()
    
    let mySwitch2 = UISwitch()
    let myButton = UIButton()
    let myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        label
        myLabel.text = "Hello"
        myLabel.textColor = .blue
        myLabel.frame = CGRect(x: 120, y: 500, width: 150, height: 50)
        myLabel.textAlignment = .center
        
        
        view.addSubview(myLabel)
        
//        button
        myButton.frame = CGRect(x: 120, y: 200, width: 150, height: 80)
        myButton.backgroundColor = UIColor.orange
        myButton.setTitle("Ok", for: .normal)
        myButton.setTitle("Push", for: .highlighted)
        
        
        view.addSubview(myButton)
        
//        switch
        mySwitch2.frame = CGRect.zero
        mySwitch2.center = view.center
        
        view.addSubview(mySwitch2)
        
        mySwitch2.tintColor = UIColor.green
        mySwitch2.thumbTintColor = UIColor.red
        mySwitch2.onTintColor = UIColor.blue
        
        mySwitch2.addTarget(self, action: #selector(changeSwitch(paramTarget:)), for: .valueChanged)
        
////        Create switch
//        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
//        self.view.addSubview(self.mySwitch)
////        on
//        self.mySwitch.setOn(true, animated: true)
//
////        check switch is on or off
//        if self.mySwitch.isOn {
//            print("switch is on")
//        } else {
//            print("switch is off")
//        }
//
//        self.mySwitch.addTarget(self, action: #selector(changeSwitch(paramTarget:)), for: .valueChanged)
//

    }

//    @objc func changeSwitch(paramTarget: UISwitch) {
//        print("param is = ", paramTarget)
//
//        if paramTarget.isOn {
//            print("switch is on")
//        } else {
//            print("switch is off")
//        }
//    }
//
    
    @objc func changeSwitch(paramTarget: UISwitch) {
        if paramTarget.isOn {
            myButton.isUserInteractionEnabled = false
        } else {
            myButton.isUserInteractionEnabled = true
        }
    }
}

