//
//  ProfileUITests.swift
//  biteballotUITests
//
//  Created by Owen McGee on 4/12/25.
//

import XCTest

final class ProfileUITests: XCTestCase {
    
    func testProfileCreation() {
        let app = XCUIApplication()
        app.launchArguments.append("--uitesting")
        app.launch()

        let usernameTextField = app.textFields["usernameTextField"]
        let passwordTextField = app.secureTextFields["passwordTextField"]
        let profileButton = app.buttons["profileButton"]

        XCTAssertTrue(usernameTextField.exists)
        XCTAssertTrue(passwordTextField.exists)
        XCTAssertTrue(profileButton.exists)

        usernameTextField.tap()
        usernameTextField.typeText("testUser")

        // Defensive check
        XCTAssertEqual(usernameTextField.value as? String, "testUser")

        passwordTextField.tap()
        passwordTextField.typeText("testPassword123")

        profileButton.tap()


        let savedUsernameLabel = app.staticTexts["savedUsernameLabel"]

        XCTAssertTrue(savedUsernameLabel.waitForExistence(timeout: 2))
        XCTAssertEqual(savedUsernameLabel.label, "Saved username: testUser")
    }
}
