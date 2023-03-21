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
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .medium))
                Text(subtitle)
                    .font(.system(size: 14, weight: .light))
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .leading)
            Image(systemName: imageName)
                .font(.title3)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .frame(alignment: .trailing)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .trailing)
            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

struct LanguageCell_Previews: PreviewProvider {
    static var previews: some View {
        LanguageCell(imageName: "checkmark", title: "English(US)", subtitle: "Default")
    }
}
