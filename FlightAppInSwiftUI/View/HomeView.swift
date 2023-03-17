//
//  HomeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedSegment = 0
    private var roundTrip : some View = RoundTripView()
    private var oneWay : some View = OneWayView()
    var body: some View {
        ZStack {
            Image("Start")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                        .padding(.top, 170)
                        .ignoresSafeArea()
                        VStack (alignment: .leading){
                            Text("Hello")
                            .font(.system(size: 28, weight: .medium))
                            Text("Plan your next travel")
                            .font(.system(size: 17, weight: .regular))
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, 70)
                            .padding(15)
                        VStack(spacing: 30) {
                            Picker("",selection: $selectedSegment){
                                Text("Round Trip").tag(0)
                                Text("One Way").tag(1)
                            }.pickerStyle(.segmented)
                            if selectedSegment == 0 {
                                RoundTripView()
                            } else {
                                OneWayView()
                            }
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                        .padding(.top, 180)
                        .padding(30)
                            
                    }
                    
                )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
