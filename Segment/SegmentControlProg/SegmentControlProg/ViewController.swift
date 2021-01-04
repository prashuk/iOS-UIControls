//
//  ViewController.swift
//  SegmentControlProg
//
//  Created by Prashuk Ajmera on 1/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    var segementControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segementControl = UISegmentedControl.create(["One", "Two", "Three"])
        segementControl.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 20)
        segementControl.tintColor = .green
        segementControl.backgroundColor = .lightGray
        segementControl.addTarget(self, action: #selector(tappedSegmentControl), for: .valueChanged)
        
        view.addSubview(segementControl)
    }

    @objc func tappedSegmentControl(_ sender: UISegmentedControl) {
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
    }
}

extension UISegmentedControl {
    static func create(_ items: [String]) -> UISegmentedControl {
        let segementControl = UISegmentedControl(items: items)
        segementControl.selectedSegmentIndex = 0
        return segementControl
    }
}
