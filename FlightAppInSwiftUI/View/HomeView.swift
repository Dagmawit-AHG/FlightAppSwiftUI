//
//  HomeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var settingsIconPressed = false
    var body: some View {
        NavigationView {
            ZStack {
                Text("Content")
                    .toolbar {
                        Button(action: { settingsIconPressed = true }) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.black)
                                .font(.title2)
                        }
                    }
                NavigationLink("", destination: SettingsView(), isActive: $settingsIconPressed)
            Image("Start")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    ZStack(alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                        .padding(.top, 170)
                        VStack(alignment: .leading,spacing: 12) {
                            Text("Hello")
                            .font(.system(size: 28, weight: .medium))
                            .frame(alignment: .leading)
                            Text("Plan your next travel")
                            .font(.system(size: 17, weight: .regular))
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, 70)
                            .padding(15)
                        ScrollView {
                            
                        }
        
                    }
                    
                )
        }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
