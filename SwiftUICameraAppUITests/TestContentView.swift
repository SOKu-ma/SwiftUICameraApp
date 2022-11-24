//
//  TestContentView.swift
//  SwiftUICameraAppUITests
//
//  Created by Shuhei Ota on 2022/11/24.
//

import XCTest
@testable import SwiftUICameraApp

final class TestContentView: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func test_Init() throws {
        let app = XCUIApplication()
        app.launch()
    }

}
