//
//  LandmarkList.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 29/11/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
}
