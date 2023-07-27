//
//  StyleButtom.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 04.07.23.
//

import UIKit

class StyleButtom: UIButton {
    
    let title = ""
    let x = 0
    let y = 0
    let width = 0
    let color: UIColor = .systemPink
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleAndPosition(text: title, x: x, y: y, width: width, color: color)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        styleAndPosition(text: title, x: x, y: y, width: width, color: color)
    }
    
    func styleAndPosition(text: String, x: Int, y: Int, width: Int, color: UIColor) {
        
        frame = CGRect(x: x, y: y, width: width, height: 60)
        backgroundColor = color
        layer.cornerRadius = 10
        setTitle(text, for: .normal)
        titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
    }
}
