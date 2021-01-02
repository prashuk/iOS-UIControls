//
//  ViewController.swift
//  AlertProg
//
//  Created by Prashuk Ajmera on 1/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    var userIdTextField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapBtnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert Title", message: "Message to display", preferredStyle: .alert)
        
        alert.addTextField { [weak self] (textfield) in
            self!.userIdTextField = textfield
            self!.userIdTextField?.placeholder = "Enter text"
        }
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { (_) in
            print("Ok Tapped")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            print("Cancel Tapped")
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tap2BtnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sheet Title", message: "Message to display", preferredStyle: .actionSheet)
        
        let sendAction = UIAlertAction(title: "Send", style: .default) { (_) in
            print("Send Tapped")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            print("Cancel Tapped")
        }
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (_) in
            print("Delete Tapped")
        }
        
        alert.addAction(sendAction)
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

