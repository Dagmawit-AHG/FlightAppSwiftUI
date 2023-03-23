//
//  LanguageCell.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 21/03/2023.
//

import SwiftUI

struct LanguageCell: View, Hashable {
    
    static func == (lhs: LanguageCell, rhs: LanguageCell) -> Bool {
        return lhs.imageName == rhs.imageName && lhs.title == rhs.title && lhs.subtitle == rhs.subtitle
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(imageName)
        hasher.combine(title)
        hasher.combine(subtitle)
    }
    
    @State var imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .medium))
                Text(subtitle)
                    .font(.system(size: 14, weight: .light))
            }.frame(alignment: .leading)
            Spacer()
            Spacer()
            Image(systemName: imageName)
                .font(.title3)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .frame(alignment: .trailing)
        }.frame( alignment: .trailing)
            .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

struct LanguageCell_Previews: PreviewProvider {
    static var previews: some View {
        LanguageCell(imageName: "checkmark", title: "English(US)", subtitle: "Default")
    }
}
