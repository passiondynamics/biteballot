//
//  BallotTypeSelectionView.swift
//  biteballot
//
//  Created by Owen McGee on 5/6/25.
//

import SwiftUI

enum BallotType: String, CaseIterable, Identifiable {
    case multiVote = "Multi-vote"
    case singleVote = "Single vote"
    case elimination = "Elimination"
    case majorityWins = "Majority wins"
    case aroundTheHorn = "Around the horn"
    
    var id: String { self.rawValue }
    
    var description: String {
        switch self {
        case .multiVote:
            return "Vote for multiple options"
        case .singleVote:
            return "Choose only one option"
        case .elimination:
            return "Eliminate one each round until one remains"
        case .majorityWins:
            return "Most votes wins; ties go to runoff (single vote)"
        case .aroundTheHorn:
            return "Each person eliminates one until one remains"
        }
    }
}

struct BallotTypeSelectionView: View {
    @State private var selectedType: BallotType? = nil

    var body: some View {
        NavigationView {
            List(BallotType.allCases) { type in
                Button {
                    selectedType = type
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(type.rawValue).bold()
                            Text(type.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        if selectedType == type {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Select Ballot Type")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Continue") {
                        print("Selected type: \(selectedType?.rawValue ?? "None")")
                    }
                    .disabled(selectedType == nil)
                }
            }
        }
    }
}

