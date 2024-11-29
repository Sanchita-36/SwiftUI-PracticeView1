//
//  ModelData.swift
//  SwiftUI_PracticeView1
//
//  Created by sanchita lachke on 29/11/24.
//

import SwiftUI

var landmarks: [Landmark] = load("landmarkData.json")

//Generic function to locate the data file, convert it to data then parse to data model
func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    //locate file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't load \(filename) in bundle")
    }
    
    //convert to data
    do {
       data = try Data(contentsOf: file)
    }catch {
        fatalError("Couldn't load \(filename) in bundle")
    }
    
    //parse the data
    do {
        let decoder = JSONDecoder()
       return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("Couldn't load \(filename) in bundle")
    }
}
