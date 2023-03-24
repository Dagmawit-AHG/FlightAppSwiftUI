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
                    modifyTextField(textField: TextField("From",text: $fromRoundTripText))
                }
                ZStack {
                    modifyImage(image: Image(systemName: "airplane.arrival"), alignment: .trailing, padding: 16)
                    modifyTextField(textField: TextField("To",text: $toRoundTripText))
                }
                HStack(spacing: 30) {
                    ZStack {
                        modifyImage(image: Image(systemName: "calendar"), alignment: .bottomLeading, padding: 5)
                        modifyDatePicker(datePicker: DatePicker(selection: $departureDate, in: ...Date.now, displayedComponents: .date) {})
                        
                    }
                    ZStack {
                        modifyImage(image: Image(systemName: "calendar"), alignment: .bottomLeading, padding: 5)
                        modifyDatePicker(datePicker: DatePicker(selection: $returnDate, in: ...Date.now, displayedComponents: .date) {})
                    }
                }
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }
    }
}

struct RoundTripView_Previews: PreviewProvider {
    static var previews: some View {
        RoundTripView()
    }
}
