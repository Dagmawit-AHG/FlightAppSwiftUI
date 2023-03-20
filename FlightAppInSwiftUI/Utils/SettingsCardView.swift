//
//  SettingsCardView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 20/03/2023.
//

import SwiftUI

struct SettingsCardView: View {
    let image: String
    let title: String
    var body: some View {
        Color.clear
            .overlay(
                ZStack {
                    Image("CardView")
                    .resizable()
                    Image(systemName: image)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                        .padding()
                    Text(String(title))
                        .font(.system(size: 18,weight: .medium))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                        .padding(.leading, 70)
                }
            )
            .clipped()
            .frame(width: 340, height: 98, alignment: .center)
    }
}

struct SettingsCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCardView(image: "character.bubble", title: "Language")
    }
}
