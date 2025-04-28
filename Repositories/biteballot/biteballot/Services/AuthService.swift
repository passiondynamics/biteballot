//
//  AuthService.swift
//  biteballot
//
//  Created by Owen McGee on 4/12/25.
//

import Foundation

enum AuthService {
    static func saveProfile(username: String, password: String) {
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")
    }
}
