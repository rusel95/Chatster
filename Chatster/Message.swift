//
//  Message.swift
//  Chatster
//
//  Created by Admin on 20.03.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
    
    var fromId: String?
    var text: String?
    var timestamp: NSNumber?
    var toId: String?
    
    func chatPartnerId() -> String? {
        
        if fromId == FIRAuth.auth()?.currentUser?.uid {
            return toId
        } else {
            return fromId
        }
    }
    
}
