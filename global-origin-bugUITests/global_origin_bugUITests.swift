//
//  global_origin_bugUITests.swift
//  global-origin-bugUITests
//
//  Created by Patrick Dinger on 11/24/21.
//

import XCTest

class global_origin_bugUITests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testScroll() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let scrollBarsQuery = XCUIApplication()/*@START_MENU_TOKEN@*/ .windows["global_origin_bug.ContentView-1-AppWindow-1"].scrollBars/*[[".windows[\"global-origin-bug\"]",".scrollViews.scrollBars",".scrollBars",".windows[\"global_origin_bug.ContentView-1-AppWindow-1\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        scrollBarsQuery.children(matching: .button).element(boundBy: 0).click()
        screenshot()

        scrollBarsQuery.children(matching: .button).element(boundBy: 1).click()
        screenshot()
        
        app.terminate()
    }

    func screenshot() {
        let fullScreenshot = XCUIScreen.main.screenshot()
        let screenshot = XCTAttachment(screenshot: fullScreenshot)
        screenshot.lifetime = .keepAlways
        add(screenshot)
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
