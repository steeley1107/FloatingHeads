//
//  FloatingButton.swift
//  FloatingHeads
//
//  Created by Steele on 2015-11-25.
//  Copyright © 2015 Steele. All rights reserved.
//

import UIKit


extension UIColor {
    
    class var flatWhiteColor: UIColor {
        return UIColor(red: 0.9274, green: 0.9436, blue: 0.95, alpha: 1.0)
    }
    class var flatBlackColor: UIColor {
        return UIColor(red: 0.1674, green: 0.1674, blue: 0.1674, alpha: 1.0)
    }
    class var flatBlueColor: UIColor {
        return UIColor(red: 0.3132, green: 0.3974, blue: 0.6365, alpha: 1.0)
    }
    class var flatRedColor: UIColor {
        return UIColor(red: 0.9115, green: 0.2994, blue: 0.2335, alpha: 1.0)
    }
    
    var pixelImage: UIImage {
        
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        
        self.setFill()
        UIRectFill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}


class FloatingButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    
    func setup() {
        tintColor = UIColor.whiteColor()
        if backgroundImageForState(.Normal) == nil {
            setBackgroundImage(UIColor.flatBlueColor.pixelImage, forState: .Normal)
        }
        layer.cornerRadius = frame.width/2
        layer.masksToBounds = true
    }
    
    
    convenience init(image: UIImage, backgroundColor: UIColor = UIColor.flatBlueColor) {
        
        self.init()
        setImage(image, forState: .Normal)
        setBackgroundImage(backgroundColor.pixelImage, forState: .Normal)
    }
    
    
    convenience init() {
        
        self.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    }
    
}