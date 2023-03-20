//
//  SettingsView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var settingsIconPressed = false
    @State private var backIconPressed = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Settings")
                    .font(.system(size: 28,weight: .medium))
                    .padding(.top,100)
                    .padding(.leading,30)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .ignoresSafeArea()
            
                .font(.system(size: 28,weight: .medium))
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: { settingsIconPressed = true }) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.black)
                                .font(.title2)
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button(action: { backIconPressed = true }) {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.black)
                                .font(.title2)
                        }
                    }
                }
            NavigationLink("", destination: SettingsView(), isActive: $settingsIconPressed)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
