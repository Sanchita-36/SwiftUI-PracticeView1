//
//  ContentView.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 28/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -140)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Sardar Vallabhbhai Patel")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack {
                    Text("STATUE OF UNITY")
                    Spacer()
                    Text("Gujarat")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Statue Of Unity")
                    .font(.title2)
                Text("Description of Statue Of Unity")
                
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
