//
//  SettingsView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var showLanguagesView = false
    @State private var darkModeIsOn = false
    @State private var notificationsIsOn = false
    var body: some View {
        ScrollView{
            VStack(spacing:30) {
                ZStack{
                    SettingsCardView(image: "character.bubble", title: "Language")
                    Button("English(UK)  >", action: { showLanguagesView = true})
                        .font(.system(size: 16,weight: .light))
                        .foregroundColor(Color.black)
                        .frame(width: 340, height: 98, alignment: .trailing)
                        .padding(.trailing, 30)
                }
                ZStack{
                    SettingsCardView(image: "moon", title: "Dark Mode")
                    Toggle("", isOn: $darkModeIsOn)
                        .toggleStyle(SwitchToggleStyle(tint: .black))
                        .padding(.trailing, 30)
                }
                ZStack{
                    SettingsCardView(image: "bell", title: "Notifications")
                    Toggle("", isOn: $notificationsIsOn)
                        .toggleStyle(SwitchToggleStyle(tint: .black))
                        .padding(.trailing, 30)
                    
                }
            }
        }.padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
