//
//  HomeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//
import SwiftUI

struct HomeView: View {
    @State private var fromRoundTripText: String = String()
    @State private var toRoundTripText: String = String()
    @State private var departureDate = Date.now
    @State private var returnDate = Date.now
    @State private var settingsIconPressed = false
    @State private var selectedSegment = 0
    @State private var searchFlightPressed = false
    private var roundTrip : some View = RoundTripView()
    private var oneWay : some View = OneWayView()

    var body: some View {
        NavigationView {
            ZStack {
                Text("Content")
                    .toolbar {
                        Button(action: { settingsIconPressed = true }) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.black)
                                .font(.title2)
                        }
                    }
                NavigationLink("", destination: SettingsView(), isActive: $settingsIconPressed)
            Image("Start")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    ZStack(alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                        .padding(.top, 170)
                        VStack(alignment: .leading,spacing: 12) {
                            Text("Hello")
                            .font(.system(size: 28, weight: .medium))
                            .frame(alignment: .leading)
                            Text("Plan your next travel")
                            .font(.system(size: 17, weight: .regular))
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, 70)
                            .padding(15)
                        ScrollView {
                            VStack(spacing: 30) {
                                Picker("",selection: $selectedSegment){
                                    Text("Round Trip").tag(0)
                                    Text("One Way").tag(1)
                                }.pickerStyle(.segmented)
                                    .padding(.bottom,20)
                                if selectedSegment == 0 {
                                    RoundTripView()
                                } else {
                                    OneWayView()
                                }
                            
                            Button(action: { searchFlightPressed = true }, label: {
                                Text("Search Flights")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(.white)
                                    .frame(width: 315, height: 49)
                                    .background(Color.accentColor)
                                    .cornerRadius(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(Color.accentColor)
                                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    )
                            })
                            }
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .padding(.top, 170)
                            .padding(30)
                        
                    }
                    
                )
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
