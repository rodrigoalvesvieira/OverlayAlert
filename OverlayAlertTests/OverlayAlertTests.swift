//
//  OverlayAlertTests.swift
//  OverlayAlertTests
//
//  Created by Rodrigo Alves on 4/2/16.
//  Copyright © 2016 Rodrigo Alves Vieira. All rights reserved.
//

import Quick
import Nimble
import OverlayAlert

class OverlayAlertTests: QuickSpec {
    override func spec() {
        describe("OverlayAlert") {
            let defaultFont = UIFont(name: "AvenirNext-Medium", size: 14)
            
            it("is properly initialized with default properties") {
                let overlayMessage = OverlayAlert(text: "Success!")

                expect(overlayMessage.text).to(equal("Success!"))
                expect(overlayMessage.font).to(equal(defaultFont))
            }
        }
    }
}
