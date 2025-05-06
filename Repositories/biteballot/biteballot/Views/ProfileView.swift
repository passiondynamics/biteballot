//
//  ProfileView.swift
//  biteballot
//
//  Created by Owen McGee on 4/12/25.
//
import SwiftUI

struct ProfileView: View {
    @Binding var profileSaved: Bool

    @State private var username: String = ""
    @State private var password: String = ""

    @State private var savedUsername: String? = nil

    var body: some View {
        VStack(spacing: 20) {
            Text("Create Profile")
                .font(.largeTitle)
                .bold()

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)
                .accessibilityIdentifier("usernameTextField")

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .accessibilityIdentifier("passwordTextField")

            Button(action: {
                AuthService.saveProfile(username: username, password: password)
                savedUsername = username
                profileSaved = true // Signal to ContentView to show next screen
            }) {
                Text("Save Profile")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .accessibilityIdentifier("profileButton")

            if let savedUsername = savedUsername {
                Text("Saved username: \(savedUsername)")
                    .accessibilityIdentifier("savedUsernameLabel")
            }
        }
        .padding()
    }
}
