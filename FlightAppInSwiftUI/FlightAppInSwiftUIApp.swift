//
//  FlightAppInSwiftUIApp.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 04/03/2023.
//

import SwiftUI
import Firebase

@main
struct FlightAppInSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
