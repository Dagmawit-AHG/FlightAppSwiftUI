//
//  HomeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct HomeView: View {
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
                        ScrollView {
                            VStack (alignment: .leading){
                                Text("Hello")
                                .font(.system(size: 28, weight: .medium))
                                Text("Plan your next travel")
                                .font(.system(size: 17, weight: .regular))
                            }
                        }.padding(.top, 100)
                            .ignoresSafeArea()
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
