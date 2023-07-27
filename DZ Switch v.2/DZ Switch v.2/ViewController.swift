//
//  ViewController.swift
//  DZ Switch v.2
//
//  Created by Владимир Дмитриев on 26.07.23.
//

import UIKit

class ViewController: UIViewController {

    var myImageView = UIImageView()
    let logoImage = UIImage(named: "cloud")


    override func viewDidLoad() {
        super.viewDidLoad()

        myImageView.frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        myImageView.image = logoImage
        myImageView.layer.opacity = 0.3
        self.view.addSubview(myImageView)

    }


}

