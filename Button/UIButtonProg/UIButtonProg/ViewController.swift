//
//  ViewController.swift
//  UIButtonProg
//
//  Created by Prashuk Ajmera on 12/31/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Navigation Controller
        self.title = "Root VC"
        let rightBarBtn = UIBarButtonItem(title: "Right", style: .plain, target: self, action: #selector(rightBtnTapped))
        self.navigationItem.rightBarButtonItem = rightBarBtn
        let leftBarBtn1 = UIBarButtonItem(title: "Left1", style: .plain, target: self, action: #selector(left1BtnTapped))
        let leftBarBtn2 = UIBarButtonItem(title: "Left2", style: .plain, target: self, action: #selector(left2BtnTapped))
        self.navigationItem.leftBarButtonItems = [leftBarBtn1, leftBarBtn2]

        // Add Button
        let button = UIButton.create(title: "Submit")

        let xPos: CGFloat = 50
        let yPos: CGFloat = 100
        let width: CGFloat = 100
        let height: CGFloat = 30
        button.frame = CGRect(x: xPos, y: yPos, width: width, height: height)

        button.setTitleColor(.label, for: .normal)
        button.tintColor = .blue
        button.backgroundColor = .systemFill

        button.tag = 1

        button.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        
//        button.isEnabled = false
//        button.isHidden = true

        self.view.addSubview(button)
    }
    
    @objc func rightBtnTapped(sender: UIBarButtonItem) {
        print("Right Button tapped: \(sender)")
    }

    @objc func left1BtnTapped(sender: UIBarButtonItem) {
        print("Left Button tapped: \(sender)")
    }
    
    @objc func left2BtnTapped(sender: UIBarButtonItem) {
        print("Left Button tapped: \(sender)")
    }
    
    @objc func btnAction(sender: UIButton) {
        print("Button tapped: \(sender)")
    }
}

extension UIButton {
    static func create(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        return button
    }
}
