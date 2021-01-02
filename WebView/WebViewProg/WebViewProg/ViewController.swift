//
//  ViewController.swift
//  WebViewProg
//
//  Created by Prashuk Ajmera on 1/2/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let myWebView = WKWebView(frame: CGRect(
                                        x: 0,
                                        y: -50,
                                        width: UIScreen.main.bounds.width,
                                        height: UIScreen.main.bounds.height + 50
                                    ))
        myWebView.scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        self.view.addSubview(myWebView)
                
        let url = URL(string: "https://prashuk.co")
        let urlRequest = URLRequest(url: url!)
        myWebView.load(urlRequest)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

