//
//  OtherLanguagesTableView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 22/03/2023.
//

import SwiftUI

struct OtherLanguagesTableView: View {
    var body: some View {
        ZStack {
            List {
                Section {
                    LanguageCell(
                        imageName: "",
                        title: "Dansk",
                        subtitle: "Danish"
                    )
                    LanguageCell(
                        imageName: "",
                        title: "Netherlands",
                        subtitle: "Dutch")
                    LanguageCell(
                        imageName: "",
                        title: "English(Canada)",
                        subtitle: "English(Canada)")
                    LanguageCell(
                        imageName: "",
                        title: "English(Australia)",
                        subtitle: "English(Australia)")
                    LanguageCell(
                        imageName: "",
                        title: "English(United States)",
                        subtitle: "English(United States)")
                    LanguageCell(
                        imageName: "",
                        title: "Italian",
                        subtitle: "Italy")
                } header: {
                    Text("Other Languages")
                        .font(.system(size: 17, weight: .light))
                }.background(.clear)
            }
            VStack {
                Image("Rectangle_other")
                .resizable()
                .cornerRadius(10)
                .frame(width: 343, height: 424, alignment: .top)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .padding(.top,55)
        }
    }
}

struct OtherLanguagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        OtherLanguagesTableView()
    }
}
