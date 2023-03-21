//
//  SuggestedLanguagesTableView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 21/03/2023.
//

import SwiftUI

struct SuggestedLanguagesTableView: View {
    var body: some View {
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
            }
        }
    }
}

struct SuggestedLanguagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedLanguagesTableView()
    }
}
