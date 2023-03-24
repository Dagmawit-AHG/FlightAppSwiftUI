//
//  ViewModifierFunctions.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 24/03/2023.
//

import SwiftUI

func modifyImage(image: Image, alignment: Alignment, padding: CGFloat) -> some View {
    return image.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: alignment).padding(padding)
}

func modifyTextField<TextField: View>(textField: TextField) -> some View {
    return textField.frame(height: 50)
        .padding()
        .border(.clear)
        .overlay(RoundedRectangle(cornerRadius: 5)
            .strokeBorder(Color.accentColor))
}

func modifyDatePicker<DatePicker: View>(datePicker: DatePicker) -> some View {
    return datePicker.frame(width: 130, height: 70)
        .padding(5)
        .overlay(RoundedRectangle(cornerRadius: 5)
            .strokeBorder(Color.accentColor))
}
