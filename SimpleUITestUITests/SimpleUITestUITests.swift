//
//  SimpleUITestUITests.swift
//  SimpleUITestUITests
//
//  Created by BJ on 7/10/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest

class SimpleUITestUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testShapeExistsAfterTappingAddShape() {
        
        app.buttons["Add Shape"].tap()
        let button = app.buttons["Button0"]
        
        XCTAssertTrue(button.exists)
    }
    
    func testShapeDisappearsWhenTappingIt() {
        
        app.buttons["Add Shape"].tap()
        let button = app.buttons["Button0"]
        button.tap()
        
        XCTAssertFalse(button.exists)

    }
    
    func testThreeCellsInTable() {
        
        app.buttons["Show Cells"].tap()
        app.tables.staticTexts["0"].tap()
        
        let count = app.tables.cells.count
        
        XCTAssertEqual(count, 3)
        
    }
}
