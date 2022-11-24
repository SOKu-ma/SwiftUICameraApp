//
//  TestContentViewModel.swift
//  SwiftUICameraAppTests
//
//  Created by Shuhei Ota on 2022/11/24.
//

import XCTest
@testable import SwiftUICameraApp

final class TestContentViewModel: XCTestCase {
    
    var vm = ContentViewModel()

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    ///
    /// イベント：カメラ起動ボタンタップ
    /// テスト観点：カメラが起動する
    ///
    func test_btnCameraTapped() throws {
        vm.btnCameraTapped()
        XCTAssertEqual(true, vm.isShowCamera)
    }
    
    ///
    /// イベント：設定ボタンタップ
    /// テスト観点：設定画面が開く
    ///
    func test_btnConfigTapped() throws {
        vm.btnConfigTapped()
        XCTAssertEqual(true, vm.isShowConfig)
    }
    
    
}
