//
//  BallotSelectionView.swift
//  biteballot
//
//  Created by Owen McGee on 5/6/25.
//

import SwiftUI

struct BallotSelectionView: View {
    // Control navigation state
    @State private var navigateToHost = false
    @State private var navigateToJoin = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Choose an Option")
                    .font(.title)

                // Invisible links triggered by state change
                NavigationLink(destination: BallotTypeSelectionView(), isActive: $navigateToHost) {
                    EmptyView()
                }
                NavigationLink(destination: JoinBallotView(), isActive: $navigateToJoin) {
                    EmptyView()
                }

                // Host button triggers host navigation
                Button("Host a Ballot") {
                    navigateToHost = true
                }
                .buttonStyle(.borderedProminent)

                // Join button triggers join navigation
                Button("Join a Ballot") {
                    navigateToJoin = true
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
    }
}
