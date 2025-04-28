//
//  ProfileView.swift
//  biteballot
//
//  Created by Owen McGee on 4/12/25.
//
import SwiftUI


struct ProfileView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var savedUsername: String? = nil // ✨ New state to track saved username

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
                print("🔒 Saving username: \(username), password: \(password)")
                AuthService.saveProfile(username: username, password: password)
                savedUsername = username // ✨ Save username locally to show
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

            // ✨ Add this to show the saved username
            if let savedUsername = savedUsername {
                Text("Saved username: \(savedUsername)")
                    .accessibilityIdentifier("savedUsernameLabel")
            }
        }
        .padding()
    }
}
