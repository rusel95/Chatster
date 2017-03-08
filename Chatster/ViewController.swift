//
//  ViewController.swift
//  Chatster
//
//  Created by Admin on 08.03.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        
        
        
    }

    func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }

}

