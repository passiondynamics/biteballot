//
//  ContentView.swift
//  biteballot
//
//  Created by Owen McGee on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProfileView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  // The view you want to preview
            .previewDevice("iPhone 13")  // Specify the device for preview (optional)
            .previewLayout(.sizeThatFits)  // Fit the preview to the size of the content
    }
}
