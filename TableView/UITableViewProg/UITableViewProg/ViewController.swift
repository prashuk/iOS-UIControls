//
//  ViewController.swift
//  UITableViewProg
//
//  Created by Prashuk Ajmera on 1/1/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let tableView = UITableView.create(withCellName: "myCell")
    let data = ["Prashuk", "Ajmera", "Shraddha", "Singh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
                
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
}

extension UITableView {
    static func create(withCellName cell: String) -> UITableView {
        let tableView: UITableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cell)
        return tableView
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.data[indexPath.row])
    }
}
