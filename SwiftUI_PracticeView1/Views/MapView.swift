//
//  MapView.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 28/11/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinates: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.9725, longitude: 76.7404), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinates)
            }
    }
}

#Preview {
    MapView(coordinates: CLLocationCoordinate2D(latitude: 10.9725, longitude: 76.7404))
}
