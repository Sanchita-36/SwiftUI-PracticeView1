//
//  Landmark.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 29/11/24.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var longitude: Double
    var latitude: Double
}
