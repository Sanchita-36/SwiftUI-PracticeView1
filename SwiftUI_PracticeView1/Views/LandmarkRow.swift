//
//  LandmarkRow.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 29/11/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
        .previewLayout(.fixed(width: 300, height: 70))
}
