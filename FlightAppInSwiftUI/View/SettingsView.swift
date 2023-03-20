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
    @State private var flightUpdatesIsOn = false
    @State private var executiveIsOn = false
    @State private var discountIsOn = false
    
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
                
                Color.clear
                    .overlay(
                        ZStack {
                            Image("Rectangle_big")
                                .resizable()
                            ZStack{
                                SettingsCardView(image: "bell", title: "Notifications")
                                Toggle("", isOn: $notificationsIsOn)
                                    .toggleStyle(SwitchToggleStyle(tint: .black))
                                    .padding(.trailing, 30)
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                            VStack(spacing: 40) {
                                HStack {
                                    Text("Flight updates")
                                        .font(.system(size: 18, weight: .medium))
                                    Toggle("", isOn: $flightUpdatesIsOn)
                                        .labelsHidden()
                                        .toggleStyle(SwitchToggleStyle(tint: .black))
                                        .padding(.leading, 70)
                                }
                                .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                                .padding(.top, 130)
                                .padding(.leading, 70)
                                HStack {
                                    Text("Executive program")
                                        .font(.system(size: 18, weight: .medium))
                                        .padding(.trailing, 35)
                                    Toggle("", isOn: $executiveIsOn)
                                        .labelsHidden()
                                        .toggleStyle(SwitchToggleStyle(tint: .black))
                                }.frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                                    .padding(.leading, 70)
                                HStack {
                                    Text("Discount & deals")
                                        .font(.system(size: 18, weight: .medium))
                                        .padding(.trailing, 50)
                                    Toggle("", isOn: $discountIsOn)
                                        .labelsHidden()
                                        .toggleStyle(SwitchToggleStyle(tint: .black))
                                }.frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                                    .padding(.leading, 70)
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                    )
                    .clipped()
                    .frame(width: 340, height: 343)
                
            }
        }.padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
