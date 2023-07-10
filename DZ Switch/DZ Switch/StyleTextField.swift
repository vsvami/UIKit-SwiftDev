//
//  StyleTextField.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 04.07.23.
//

import UIKit

class StyleTextField: UITextField {
    
    let textPlaceholder = ""
    let y = 0
    let secureText = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleAndPosition(textPlaceholder: textPlaceholder, y: y, secureText: secureText)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        styleAndPosition(textPlaceholder: textPlaceholder, y: y, secureText: secureText)
    }
    
    func styleAndPosition(textPlaceholder: String, y: Int, secureText: Bool) {
        frame = CGRect(x: 40, y: y, width: 310, height: 50)
        placeholder = textPlaceholder
        isSecureTextEntry = secureText
//        MARK: - addDecorLine
        if textPlaceholder != "" {
            let line = UIView(frame: CGRect(x: 0, y: 50, width: 310, height: 2))
            line.backgroundColor = .lightGray
            line.layer.opacity = 0.5
            self.addSubview(line)
        }
    }
}
