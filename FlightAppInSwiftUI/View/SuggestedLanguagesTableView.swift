//
//  SuggestedLanguagesTableView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 21/03/2023.
//

import SwiftUI

struct SuggestedLanguagesTableView: View {
    @State private var selection: LanguageCell?
    private var languages = [
        LanguageCell(
            imageName: "checkmark",
            title: "English(US)",
            subtitle: "Default"
        ),
        LanguageCell(
            imageName: "",
            title: "English",
            subtitle: "English"),
        LanguageCell(
            imageName: "",
            title: "English(UK)",
            subtitle: "English(UK)")
    ]
    
    var body: some View {
        ZStack {
            List(languages, id: \.self) { index in
                HStack {
                    index
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    print(index)
                }
            }
            .frame(width: 343, height: 260, alignment: .top)
            .ignoresSafeArea()
            VStack {
                Image("Rectangle_sugg")
                .resizable()
                .cornerRadius(10)
                .frame(width: 343, height: 213, alignment: .top)
                Text("App will use the first language that it supports from Language & Region settings. You can select a different language for App to use if you prefer.")
                    .font(.system(size: 15, weight: .light))
                    .padding()
                
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top,34)
        .background(.clear)
        .ignoresSafeArea()
    }
}

struct SuggestedLanguagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedLanguagesTableView()
    }
}
