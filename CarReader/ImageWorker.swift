//
//  ImageWorker.swift
//  CarReader
//
//  Created by Lesha on 27.10.16.
//  Copyright © 2016 Oleksii. All rights reserved.
//

import UIKit

private class ImageCache {
    var images = [String:UIImage]()
    
    func setImage(image: UIImage, forKey key: String) {
        images[key] = image
    }
    
    func imageForKey(key: String) -> UIImage? {
        return images[key]
    }
}

struct ImageWorker
{
    func loadImage(_ name:String, handler:ImageLoadHandler)
    {
        if let image = ImageCache.imageForKey(name)
        {
        return
        }
    }
}
