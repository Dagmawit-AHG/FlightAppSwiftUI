//
//  RoundTripView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 15/03/2023.
//

import SwiftUI

struct RoundTripView: View {
    @State private var fromRoundTripText: String = String()
    @State private var toRoundTripText: String = String()
    @State private var departureDate = Date.now
    @State private var returnDate = Date.now
    var body: some View {
        ScrollView {
            VStack (spacing: 30){
                ZStack {
                modifyImage(image: Image(systemName: "airplane.departure"), alignment: .trailing, padding: 16)
                TextField("From",text: $fromRoundTripText)
                    .frame(height: 50)
                    .padding()
                    .border(.clear)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color.accentColor))
            }
            ZStack {
                modifyImage(image: Image(systemName: "airplane.arrival"), alignment: .trailing, padding: 16)
                TextField("To",text: $toRoundTripText)
                    .frame(height: 50)
                    .padding()
                    .border(.clear)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color.accentColor))
            }
                HStack(spacing: 30) {
                ZStack {
                    modifyImage(image: Image(systemName: "calendar"), alignment: .bottomLeading, padding: 5)
                    DatePicker(selection: $departureDate, in: ...Date.now, displayedComponents: .date) {}
                        .frame(width: 130,height: 70)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.accentColor))
                        
                }
                ZStack {
                    modifyImage(image: Image(systemName: "calendar"), alignment: .bottomLeading, padding: 5)
                    DatePicker(selection: $returnDate, in: ...Date.now, displayedComponents: .date) {}
                        .frame(width: 130, height: 70)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.accentColor))
                }
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }
    }
}

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

struct RoundTripView_Previews: PreviewProvider {
    static var previews: some View {
        RoundTripView()
    }
}
