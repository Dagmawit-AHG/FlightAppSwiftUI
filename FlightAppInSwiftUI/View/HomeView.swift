//
//  HomeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//
import SwiftUI

struct HomeView: View {
    @State private var flightType = 0
    @State private var fromRoundTripText: String = String()
    @State private var toRoundTripText: String = String()
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
                        VStack (alignment: .leading){
                            Text("Hello")
                            .font(.system(size: 28, weight: .medium))
                            Text("Plan your next travel")
                            .font(.system(size: 17, weight: .regular))
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, 70)
                            .padding(15)
                        ScrollView {
                            VStack(spacing: 30) {
                                Picker("", selection: $flightType) {
                                    Text("Round Trip").tag(0)
                                    Text("One Way").tag(1)
                                }.pickerStyle(.segmented)
                                TextField("From",text: $fromRoundTripText)
                                    .frame(height: 50)
                                    .padding()
                                    .border(.clear)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                        .strokeBorder(Color.accentColor)
                                    )
                                TextField("To",text: $toRoundTripText)
                                    .frame(height: 50)
                                    .padding()
                                    .border(.clear)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                        .strokeBorder(Color.accentColor)
                                    )
                                
                            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                .padding(.top, 180)
                                .padding(30)
                        }
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
