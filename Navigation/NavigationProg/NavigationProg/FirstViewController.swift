//
//  ViewController.swift
//  NavigationProg
//
//  Created by Prashuk Ajmera on 1/2/21.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        self.title = "FirstVC"
        
        print("First VC")
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
        button.center = self.view.center
        button.setTitle("Click Me 1", for: .normal)
        button.addTarget(self, action: #selector(clickMeTapped), for: .touchUpInside)
        
        self.view.addSubview(button)
    }

    @objc func clickMeTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
//        self.navigationController?.present(SecondViewController(), animated: true, completion: nil)
    }
}

