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
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                        .padding(.top, 170)
                        .ignoresSafeArea()
                        VStack(alignment: .leading,spacing: 12) {
                            Text("Hello")
                            .font(.system(size: 28, weight: .medium))
                            .frame(alignment: .leading)
                            Text("Plan your next travel")
                            .font(.system(size: 17, weight: .regular))
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, 80)
                            .padding(10)
                        ScrollView {
                            
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
