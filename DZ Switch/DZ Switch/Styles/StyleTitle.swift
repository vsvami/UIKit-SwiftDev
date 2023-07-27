//
//  StyleTitle.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 04.07.23.
//

import UIKit

class StyleTitle: UILabel {
    
    let textTitle = ""
    let x = 0
    let y = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style(textTitle: textTitle, x: x, y: y)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        style(textTitle: textTitle, x: x, y: y)
    }
    
    func style(textTitle: String, x: Int, y: Int) {
        text = textTitle
        font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        frame = CGRect(x: x, y: y, width: 200, height: 50)
    }
}
