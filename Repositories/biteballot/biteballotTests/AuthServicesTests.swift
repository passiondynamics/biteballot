//
//  AuthServicesTests.swift
//  biteballotTests
//
//  Created by Owen McGee on 4/12/25.
//

import Foundation
import XCTest
@testable import biteballot  // Ensure this is the capitalized module name

class AuthServiceTests: XCTestCase {

    func testSaveProfile() {
        // Given
        let username = "testUser"
        let password = "testPass123"

        // When
        AuthService.saveProfile(username: username, password: password)

        // Then
        let savedUsername = UserDefaults.standard.string(forKey: "username")
        XCTAssertEqual(savedUsername, "testUser")

    }

}
