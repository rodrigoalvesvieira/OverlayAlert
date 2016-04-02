//
//  OverlayAlert.swift
//  OverlayAlert
//
//  Copyright © 2016 Rodrigo Alves Vieira. All rights reserved.
//

import UIKit

public class OverlayAlert: UILabel {
    let screenSize = UIScreen.mainScreen().bounds
    
    let defaultColor = UIColor(rgba: "#208dad")
    let defaultFont = UIFont(name: "AvenirNext-Medium", size: 14)
    
    var alertStyle: OverlayAlertStyle?
    
    required public init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        
        let defaultFrame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height / 32)
        
        self.frame = defaultFrame
        
        self.font = defaultFont
        self.tintColor = defaultColor
        self.textColor = defaultColor
        self.backgroundColor = UIColor.whiteColor()
        self.textAlignment = .Center
        
        self.alertStyle = .Success
        
        self.fade()
    }
    
    convenience public init() {
        self.init()

        self.fade()
    }
    
    convenience public init(text: String) {
        self.init()
        self.text = text
        
        self.fade()
    }
    
    convenience init(text: String, withStyle: OverlayAlertStyle) {
        self.init()
        
        self.text = text
        self.alertStyle = withStyle
        
        self.fade()
    }
    
    func fade() {
        self.fadeOut(duration: 2.0, delay: 3.0, completion: {
            (finished: Bool) -> Void in
            self.removeFromSuperview()
        })
    }
}