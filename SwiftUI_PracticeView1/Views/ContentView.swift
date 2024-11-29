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
            
            //Sardar Vallabhbhai Patel Statue
//            VStack(alignment: .leading) {
//                Text("Sardar Vallabhbhai Patel")
//                    .font(.title)
//                    .foregroundColor(.black)
//                
//                HStack {
//                    Text("STATUE OF UNITY")
//                    Spacer()
//                    Text("Gujarat")
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//                
//                Divider()
//                
//                Text("About Statue Of Unity")
//                    .font(.title2)
//                Text("Description of Statue Of Unity")
//                
//            }.padding()
            
            VStack(alignment: .leading) {
                Text("Adiyogi")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack {
                    Text("The Source of Yoga")
                    Spacer()
                    Text("Coimbatore")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About the Adiyogi Shiva")
                    .font(.title2)
                Text("The Adiyogi Shiva bust is a 34-metre tall, 45-metre long and 25-metre wide steel bust of Shiva with Thirunamam at Coimbatore, Tamil Nadu")
                
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
