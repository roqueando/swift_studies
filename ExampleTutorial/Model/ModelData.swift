//
//  ModelData.swift
//  ExampleTutorial
//
//  Created by Ayaworan on 10/07/22.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // try to get url from file and put into a file variable
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        // if not works, just do a fatal error
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    // It's like a try catch statement but with the "try" inside the block
    do {
        data = try Data(contentsOf: file)
    } catch {
        // the error variable for catch is available inside the block
        fatalError("Could not load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not decode JSON from \(filename) from main bundle: \n\(error)")
    }
}
