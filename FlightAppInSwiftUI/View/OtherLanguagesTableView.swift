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
        }
    }
}

struct OtherLanguagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        OtherLanguagesTableView()
    }
}
