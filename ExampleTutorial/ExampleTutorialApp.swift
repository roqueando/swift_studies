//
//  ExampleTutorialApp.swift
//  ExampleTutorial
//
//  Created by Ayaworan on 10/07/22.
//

import SwiftUI

@main
struct ExampleTutorialApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
