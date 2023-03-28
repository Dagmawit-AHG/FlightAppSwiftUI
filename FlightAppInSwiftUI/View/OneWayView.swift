//
//  OneWayView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 16/03/2023.
//

import SwiftUI

struct OneWayView: View {
    @State private var fromRoundTripText: String = String()
    @State private var toRoundTripText: String = String()
    @State private var departureDate = Date.now
    var body: some View {
        ScrollView {
            VStack (spacing: 30) {
                ZStack {
                    modifyImage(image: Image(systemName: "airplane.departure"), alignment: .trailing, padding: 16)
                    modifyTextField(textField: TextField("From",text: $fromRoundTripText))
                }
                ZStack {
                    modifyImage(image: Image(systemName: "airplane.arrival"), alignment: .trailing, padding: 16)
                    modifyTextField(textField: TextField("To",text: $toRoundTripText))
                }
                    ZStack {
                        modifyImage(image: Image(systemName: "calendar"), alignment: .bottom, padding: 5)
                        modifyDatePickerForOneWay(datePicker: DatePicker(selection: $departureDate, in: ...Date.now, displayedComponents: .date) {})
                    }
                
            }
        }
    }
}

struct OneWayView_Previews: PreviewProvider {
    static var previews: some View {
        OneWayView()
    }
}
