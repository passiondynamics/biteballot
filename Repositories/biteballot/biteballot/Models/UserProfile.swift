//
//  UserProfile.swift
//  biteballot
//
//  Created by Owen McGee on 5/6/25.
//

import Foundation

struct UserProfile {
    var username: String
    var password: String

    // Save to UserDefaults
    func save() {
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")
    }

    // Load from UserDefaults
    static func load() -> UserProfile? {
        guard
            let username = UserDefaults.standard.string(forKey: "username"),
            let password = UserDefaults.standard.string(forKey: "password")
        else {
            return nil
        }
        return UserProfile(username: username, password: password)
    }

    // Clear saved profile (optional helper)
    static func clear() {
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.removeObject(forKey: "password")
    }
}
