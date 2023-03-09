//
//  ForgotPasswordView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @State private var confirmButtonPressed = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.55, green: 0.79, blue: 1.0, opacity: 1.0), Color(red: 0.89, green: 0.88, blue: 1.0, opacity: 1.0)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
                .padding(.top, 170)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Forgot Password")
                        .font(.system(size: 20, weight: .medium))
                    Text("Enter your email, we will send you 5 digits verification code.")
                        .font(.system(size: 18, weight: .light))
                        .padding(16)
                    CustomTextField(text: $email, placeholder: Text("Email Address"))
                        .keyboardType(.emailAddress)
                        .padding(16)
            
                    Button(action: { confirmButtonPressed = true }, label: {
                        Text("Confirm")
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
                    }).padding(.top,150)
                    NavigationLink("",destination: VerificationCodeView(), isActive: $confirmButtonPressed)
                }
            }.padding(.top, 250)
            .ignoresSafeArea()
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
