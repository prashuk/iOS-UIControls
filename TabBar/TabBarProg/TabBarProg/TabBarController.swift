//
//  ViewController.swift
//  TabBarProg
//
//  Created by Prashuk Ajmera on 1/2/21.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let tabOne = TabOneController()
        let tabOneBar = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        tabOne.tabBarItem = tabOneBar
        
        let tabTwo = TabTwoController()
        let tabTwoBar = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), selectedImage: UIImage(systemName: "person.crop.circle.fill"))
        tabTwo.tabBarItem = tabTwoBar
        
        self.viewControllers = [tabOne, tabTwo]
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}

