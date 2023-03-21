//
//  LanguagesView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct LanguagesView: View {
    @State private var settingsIconPressed = false
    @State private var backIconPressed = false
    
    var body: some View {
        NavigationView {
            Text("")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Language")
                            .font(.system(size: 20, weight: .medium))
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: { settingsIconPressed = true }) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.black)
                                .font(.title2)
                            NavigationLink("",destination: SettingsView(), isActive: $settingsIconPressed)
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button(action: { backIconPressed = true}) {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.black)
                                .font(.title2)
                            NavigationLink("",destination: SettingsView(), isActive: $backIconPressed)
                        }
                    }
                }
            
        }
    }
}

struct LanguagesView_Previews: PreviewProvider {
    static var previews: some View {
        LanguagesView()
    }
}
