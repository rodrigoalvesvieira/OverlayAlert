//
//  OverlayAlertStyle.swift
//  OverlayAlert
//
//  Created by Rodrigo Alves on 4/2/16.
//  Copyright © 2016 Rodrigo Alves Vieira. All rights reserved.
//

public enum OverlayAlertStyle {
    case Success, Error, Custom(color: UIColor, backgroundColor: UIColor)
    func attributes() -> (color: UIColor, backgroundColor: UIColor) {
        let lightRed = UIColor(rgba: "#E82754")
        let babyBlue = UIColor(rgba: "#208dad")
        
        switch self {
        case .Success(): return (babyBlue, babyBlue)
        case .Error(): return (lightRed, lightRed)
        case .Custom(let c, let b): return (c, b)
        }
    }
}