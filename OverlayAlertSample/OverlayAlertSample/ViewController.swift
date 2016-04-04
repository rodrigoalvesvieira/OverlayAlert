//
//  ViewController.swift
//  OverlayAlertSample
//
//  Created by Rodrigo Alves on 4/4/16.
//  Copyright © 2016 Rodrigo Alves Vieira. All rights reserved.
//

import UIKit
import OverlayAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize = UIScreen.mainScreen().bounds
        let overlayMessage = OverlayAlert(text: "Hi from OverlayAlert!", overlayFrame: screenSize)
    
        self.view.addSubview(overlayMessage)
        overlayMessage.fade()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

