//
//  ContentView.swift
//  biteballot
//
//  Created by Owen McGee on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var profileSaved: Bool = false

    var body: some View {
        Group {
            if profileSaved {
                BallotSelectionView()
            } else {
                ProfileView(profileSaved: $profileSaved)
            }
        }
        .onAppear {
            profileSaved = AuthService.isProfileSaved()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  // The view you want to preview
            .previewDevice("iPhone 13")  // Specify the device for preview (optional)
            .previewLayout(.sizeThatFits)  // Fit the preview to the size of the content
    }
}
