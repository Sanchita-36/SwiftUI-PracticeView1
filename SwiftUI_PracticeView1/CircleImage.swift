//
//  CircleImage.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 28/11/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
       Image("StatueOfUnity")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 8)
    }
}

#Preview {
    CircleImage()
}
