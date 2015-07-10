//
//  SimpleUITestUITests.swift
//  SimpleUITestUITests
//
//  Created by BJ on 7/10/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest

class SimpleUITestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testShapeExistsAfterTappingAddShape() {
        
        
        let app = XCUIApplication()
        app.buttons["Add Shape"].tap()
        app.descendantsMatchingType(.Unknown).containingType(.Button, identifier:"Add Shape").childrenMatchingType(.Button).elementBoundByIndex(1).tap()

        
    }
}