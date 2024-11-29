//
//  MapView.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 28/11/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // For Sardar Vallabhbhai Patel Statue
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    //For Adiyogi
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.9725, longitude: 76.7404), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapView()
}
