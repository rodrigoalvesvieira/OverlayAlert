//
//  OverlayAlertStyle.swift
//  OverlayAlert
//
//  Created by Rodrigo Alves on 4/2/16.
//  Copyright © 2016 Rodrigo Alves Vieira. All rights reserved.
//

enum OverlayAlertStyle {
    case Success, Error, Custom(color: UIColor, backgroundColor: UIColor)
    func attributes() -> (color: UIColor, backgroundColor: UIColor) {
        let babyBlue = UIColor(rgba: "#208dad")
        
        switch self {
        case .Success(): return (babyBlue, babyBlue)
        case .Error(): return (babyBlue, babyBlue)
        case .Custom(let c, let b): return (c, b)
        }
    }
}