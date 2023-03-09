//
//  ContentView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 06/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showLoginView = false
    @State private var showRegistrationView = false
    
    var body: some View {
        NavigationView {
            Image("Start (1)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack(spacing: 0) {
                        Button(action: { showLoginView = true }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .frame(width: 334, height: 49)
                            .background(Color.white)
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(Color.white)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                        })
                        NavigationLink("", destination: LoginView(), isActive: $showLoginView)
                        Button(action: { showRegistrationView = true }, label: {
                            Text("Sign Up")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .frame(width: 334, height: 49)
                            .background(Color.accentColor)
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(Color.accentColor)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                        })
                        NavigationLink("",destination: RegistrationView(), isActive: $showRegistrationView)
                    }
                        .padding(.bottom, 140), alignment: .bottom
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
