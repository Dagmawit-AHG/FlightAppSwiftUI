//
//  SuggestedLanguagesTableView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 21/03/2023.
//

import SwiftUI

struct SuggestedLanguagesTableView: View {
    var body: some View {
        ZStack {
            List {
                Section {
                    LanguageCell(
                        imageName: "",
                        title: "English(US)",
                        subtitle: "Default"
                    )
                    LanguageCell(
                        imageName: "",
                        title: "English",
                        subtitle: "English")
                    LanguageCell(
                        imageName: "checkmark",
                        title: "English(UK)",
                        subtitle: "English(UK)")
                } header: {
                    Text("Suggested Languages")
                        .font(.system(size: 17, weight: .light))
                }.background(.clear)
            }
            VStack {
                Image("Rectangle_sugg")
                .resizable()
                .frame(width: 343, height: 213, alignment: .top)
            Text("App will use the first language that it supports from Language & Region settings. You can select a different language for App to use if you prefer.")
                .font(.system(size: 15, weight: .light))
                .padding()
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .padding(.top,55)
        }.ignoresSafeArea()
    }
}

struct SuggestedLanguagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedLanguagesTableView()
    }
}
