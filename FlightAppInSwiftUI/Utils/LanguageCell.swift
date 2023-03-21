//
//  LanguageCell.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 21/03/2023.
//

import SwiftUI

struct LanguageCell: View {
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 150) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .medium))
                Text(subtitle)
                    .font(.system(size: 14, weight: .light))
            }
            Image(systemName: imageName)
                .font(.title3)
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
    }
}

struct LanguageCell_Previews: PreviewProvider {
    static var previews: some View {
        LanguageCell(imageName: "checkmark", title: "English(US)", subtitle: "Default")
    }
}
