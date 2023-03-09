//
//  iOSCheckboxToggleStyle.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 08/03/2023.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                configuration.label
            }
        }

    }
}
