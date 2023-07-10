//
//  ViewControllerTwo.swift
//  ViewControllers
//
//  Created by Владимир Дмитриев on 28.06.23.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
        hello()
    }
    
    override func loadView() {
        super.loadView()

        print("loadView")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print("viewDidLayoutSubviews")
    }
    
//    MARK: - func
    func hello() {
        print("Hello!")
    }
}
