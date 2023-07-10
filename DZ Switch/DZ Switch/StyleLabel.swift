//
//  styleLabel.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 04.07.23.
//

import UIKit

class StyleLabel: UILabel {
    
    let textLabel = ""
    let y = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleAndPosition(textLabel: textLabel, y: y)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        styleAndPosition(textLabel: textLabel, y: y)
    }
    
    func styleAndPosition(textLabel: String, y: Int) {
        text = textLabel
        font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        textColor = .systemPink
        frame = CGRect(x: 40, y: y, width: 250, height: 50)
    }
}
