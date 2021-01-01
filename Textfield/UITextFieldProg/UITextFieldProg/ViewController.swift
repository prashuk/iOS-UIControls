//
//  ViewController.swift
//  UITextFieldProg
//
//  Created by Prashuk Ajmera on 12/31/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textfield = UITextField.create(placeholder: "Enter Text")
        textfield.frame = CGRect(x: 50, y: 50, width: 200, height: 30)
        textfield.center = self.view.center
        
        textfield.borderStyle = .roundedRect
        textfield.textColor = .blue
        textfield.backgroundColor = .red
        textfield.textAlignment = .center
        
        textfield.text = "Testing data..."
        
        textfield.delegate = self
        textfield.returnKeyType = .done
        
        self.view.addSubview(textfield)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text!)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(textField.text!)
    }
    
}

extension UITextField {
    static func create(placeholder: String) -> UITextField {
        let textfield = UITextField()
        textfield.placeholder = placeholder
        return textfield
    }
}
