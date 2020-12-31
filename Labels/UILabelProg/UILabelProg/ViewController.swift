//
//  ViewController.swift
//  UILabelProg
//
//  Created by Prashuk Ajmera on 12/31/20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel.create(title: "Text Label")
        
        label.frame = CGRect(
            x: 0,
            y: 0,
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height
        )
        label.textAlignment = .center
        
        label.text = "New Label"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        //        label.isEnabled = false
        //        label.isHidden = true
        
        self.view.addSubview(label)
    }
}

extension UILabel {
    static func create(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.textColor = .label
        return label
    }
}
