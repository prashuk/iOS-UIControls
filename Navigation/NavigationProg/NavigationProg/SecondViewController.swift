//
//  SecondViewController.swift
//  NavigationProg
//
//  Created by Prashuk Ajmera on 1/2/21.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "SecondVC"
        
        print("Second VC")
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
        button.center = self.view.center
        button.setTitle("Click Me 2", for: .normal)
        button.addTarget(self, action: #selector(clickMeTapped), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func clickMeTapped(_ sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
