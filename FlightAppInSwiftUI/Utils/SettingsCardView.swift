//
//  SettingsCardView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 20/03/2023.
//

import SwiftUI

struct SettingsCardView: View {
    let image: String
    var body: some View {
        Color.clear
            .overlay(
                ZStack {
                    Image("CardView")
                    .resizable()
                    Image(image)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                        .padding()
                }
            )
            .clipped()
            .frame(width: 340, height: 98, alignment: .center)
    }
}

struct SettingsCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCardView(image: "tabler-icon-message-language")
    }
}
