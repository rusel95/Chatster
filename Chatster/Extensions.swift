//
//  Extensions.swift
//  Chatster
//
//  Created by Admin on 11.03.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func loadImageUsingCache(withUrlString: String) {
        
        self.image = nil
        
        //need to check for image in cache first
        if let cachedImage = imageCache.object(forKey: withUrlString as AnyObject) as? UIImage {
            self.image = cachedImage
            return
        }
        
        //otherwise download a picture
        let url = URL(string: withUrlString)
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error while downloading profileImage: ", error!)
            }
            
            DispatchQueue.main.async {
                
                if let downloadedImage = UIImage(data: data!) {
                    imageCache.setObject(downloadedImage, forKey: withUrlString as AnyObject)
                    self.image = UIImage(data: data!)
                }
                
            }
            
        }).resume()
    }
    
}
