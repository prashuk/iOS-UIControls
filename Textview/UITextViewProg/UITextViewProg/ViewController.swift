//
//  ViewController.swift
//  UITextViewProg
//
//  Created by Prashuk Ajmera on 1/1/21.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textview = UITextView.create()
        textview.automaticallyAdjustsScrollIndicatorInsets = false
        
        textview.frame = CGRect(x: 50, y: 50, width: 200, height: 500)
        textview.center = self.view.center
        textview.textAlignment = .justified
        
        textview.backgroundColor = .lightGray
        textview.backgroundColor = UIColor(red: 39/255, green: 53/255, blue: 182/255, alpha: 1)
        
        textview.font = UIFont.systemFont(ofSize: 25)
        textview.font = UIFont(name: "Verdana", size: 20)
        
        textview.autocapitalizationType = .allCharacters
        textview.dataDetectorTypes = .link
        
        textview.isHidden = false
        textview.isEditable = true
        
        textview.layer.cornerRadius = 10
        
        textview.autocorrectionType = .yes
        textview.spellCheckingType = .yes
        
//        textview.delegate = self
        
        let myGesture = UITapGestureRecognizer(target: self, action: #selector(tappedOutside))
        
        self.view.addGestureRecognizer(myGesture)
        self.view.addSubview(textview)
        
    }
    
    @objc func tappedOutside(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

extension UITextView {
    static func create() -> UITextView {
        let textview = UITextView()
        return textview
    }
}
