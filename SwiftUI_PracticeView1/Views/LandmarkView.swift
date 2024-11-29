//
//  LandmarkView.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 29/11/24.
//

import SwiftUI

struct LandmarkView: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinates: landmark.locationCoordinates)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -140)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.black)
                    
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text(landmark.name)
                        .font(.title2)
                    Text(landmark.description)
                    
                }.padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandmarkView(landmark: landmarks[0])
}
