//
//  AuthService.swift
//  biteballot
//
//  Created by Owen McGee on 4/12/25.
//

import Foundation

struct AuthService {
    
    static func saveProfile(username: String, password: String) {
        let profile = UserProfile(username: username, password: password)
        profile.save()
    }
    
    static func loadProfile() -> UserProfile? {
        return UserProfile.load()
    }

    static func isProfileSaved() -> Bool {
        return UserProfile.load() != nil
    }

    static func clearProfile() {
        UserProfile.clear()
    }
}

