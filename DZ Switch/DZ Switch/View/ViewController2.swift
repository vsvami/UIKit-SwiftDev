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
        
        
        self.view.backgroundColor = .systemPink
        
        self.title = "mVC"

        lab.backgroundColor = .yellow
        lab.text = "Shalom, epta :)"
        
        lab.frame = CGRect(x: 100, y: 150, width: 200, height: 50)
        lab.textColor = .blue
        lab.textAlignment = .center
        lab.font = lab.font.withSize(18)
        
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
