//
//  ViewController2.swift
//  DZ Switch
//
//  Created by Владимир Дмитриев on 26.07.23.
//

import UIKit

class ViewController2: UIViewController {

    let lab = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lab.backgroundColor = .yellow
        lab.text = "Shalom :)"
        lab.center = view.center
        self.view.addSubview(lab)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
