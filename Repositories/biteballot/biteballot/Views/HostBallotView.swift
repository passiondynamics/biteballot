//
//  HostBallotView.swift
//  biteballot
//
//  Created by Owen McGee on 5/6/25.
//

import SwiftUI

struct HostBallotView: View {
    // Controls whether navigation to BallotSelectionView should happen
    @State private var navigateToBallotSelection = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Host a Ballot")
                    .font(.largeTitle)
                    .bold()

                // Navigation trigger
                NavigationLink(destination: BallotSelectionView(), isActive: $navigateToBallotSelection) {
                    EmptyView()
                }

                Button(action: {
                    // Update state to trigger navigation
                    navigateToBallotSelection = true
                }) {
                    Text("Start Ballot Setup")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
        }
    }
}

