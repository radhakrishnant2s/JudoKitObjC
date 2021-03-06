//
//  JudoKitCardDetailsTests.swift
//  JudoKitSwiftExample
//
//  Copyright (c) 2019 Alternative Payments Ltd
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest

class JudoKitCardDetailsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
        
    func testOnCardDetailsButtonTapValidPaymentCardDetailsAreDisplayed() {
        let app = XCUIApplication()
        app.tables.staticTexts["with default settings"].tap()
        
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.secureTextFields["Card number"].typeText("4976000000003436")
        
        let expiryDateTextField = elementsQuery.textFields["Expiry date"]
        expiryDateTextField.typeText("1220")
        
        let cvv2TextField = elementsQuery.secureTextFields["CVV2"]
        cvv2TextField.typeText("452")

        app.buttons.matching(identifier: "Pay").element(boundBy: 1).tap()
        
        let button = app.buttons["Card details"]
        let existsPredicate = NSPredicate(format: "exists == 1")
        
        expectation(for: existsPredicate, evaluatedWith: button, handler: nil)
         waitForExpectations(timeout: kTestCaseTimeout, handler: nil)
        
        button.tap()
        
        let tableView = app.tables.matching(identifier: "Details")
        XCTAssertEqual(tableView.cells.count, 9)
        
        XCTAssertEqual(tableView.cells["Card last 4 digits"].staticTexts.element(boundBy: 1).label, "3436")
        XCTAssertEqual(tableView.cells["End date"].staticTexts.element(boundBy: 1).label, "1220")
        XCTAssertEqual(tableView.cells["Card type"].staticTexts.element(boundBy: 1).label, "11")
        XCTAssertEqual(tableView.cells["Bank"].staticTexts.element(boundBy: 1).label, "Credit Industriel Et Commercial")
        XCTAssertEqual(tableView.cells["Card category"].staticTexts.element(boundBy: 1).label, "Classic")
        XCTAssertEqual(tableView.cells["Card country"].staticTexts.element(boundBy: 1).label, "FR")
        XCTAssertEqual(tableView.cells["Card funding"].staticTexts.element(boundBy: 1).label, "Debit")
        XCTAssertEqual(tableView.cells["Card scheme"].staticTexts.element(boundBy: 1).label, "Visa")
    }
}
