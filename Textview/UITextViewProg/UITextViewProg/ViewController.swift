//
//  ViewController.swift
//  UITextViewProg
//
//  Created by Prashuk Ajmera on 1/1/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textview = UITextView.create()
        textview.automaticallyAdjustsScrollIndicatorInsets = false
        
        textview.frame = CGRect(x: 50, y: 50, width: 200, height: 500)
        textview.center = self.view.center
        textview.textAlignment = .justified
        
        textview.backgroundColor = .red
        
        self.view.addSubview(textview)
    }
}

extension UITextView {
    static func create() -> UITextView {
        let textview = UITextView()
        return textview
    }
}
