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
    
    private func initCode() {
        let defaultFrame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height / 32)
        
        self.frame = defaultFrame
        
        self.font = defaultFont
        self.tintColor = defaultColor
        self.textColor = defaultColor
        self.backgroundColor = UIColor.whiteColor()
        self.textAlignment = .Center
        
        self.alertStyle = .Success
    }
    
    class func prepareFrame(frame: CGRect) -> CGRect {
        return CGRect(x: 0, y: 0, width: frame.width, height: frame.height / 32)
    }
    
    // IB Initialization
    required public init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        self.initCode()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initCode()
    }
    
    convenience public init(text: String, overlayFrame: CGRect) {
        let modifiedFrame = OverlayAlert.prepareFrame(overlayFrame)
        self.init(frame: modifiedFrame)

        self.text = text
        self.initCode()
    }
    
    convenience init(text: String, overlayFrame: CGRect, withStyle: OverlayAlertStyle) {
        self.init(frame: OverlayAlert.prepareFrame(overlayFrame))

        self.text = text
        self.alertStyle = withStyle
        initCode()
    }
    
    public func fade() {
        self.fadeOut(duration: 2.0, delay: 3.0, completion: {
            (finished: Bool) -> Void in
            self.removeFromSuperview()
        })
    }
}