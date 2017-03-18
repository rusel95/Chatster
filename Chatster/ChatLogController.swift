//
//  ChatLogController.swift
//  Chatster
//
//  Created by Admin on 18.03.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit

class ChatLogController: UICollectionViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        navigationItem.title = "Chat Log Controller"
        
        collectionView?.backgroundColor = UIColor.gray
        
        setupInputComponents()
    }
    
    
    
    func setupInputComponents() {
        let containerView = UIView()
        containerView.backgroundColor = UIColor.red
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(containerView)
        
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    
}
