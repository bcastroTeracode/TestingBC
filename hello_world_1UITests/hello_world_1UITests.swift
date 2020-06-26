//
//  hello_world_1UITests.swift
//  hello_world_1UITests
//
//  Created by Betiana Castro on 15/06/2020.
//  Copyright © 2020 Betiana Castro. All rights reserved.
//

import XCTest

class hello_world_1UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    //    XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    //Esta Captura de Pantslla anda
    func testTakeScreenshotOfMainWindow() {
        let app = XCUIApplication()
        app.launch()
        let screenshot = app.windows.firstMatch.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .keepAlways
        attachment.name = "ProbandoCaptura"
        add(attachment)
    }

}
