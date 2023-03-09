//
//  LoginView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 07/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isOn = false
    @State private var loginButtonPressed = false
    @State private var showForgotPassword = false
    @State private var showRegistrationView = false
    
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.55, green: 0.79, blue: 1.0, opacity: 1.0), Color(red: 0.89, green: 0.88, blue: 1.0, opacity: 1.0)]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.white)
                    .padding(.top, 170)
                    .ignoresSafeArea()
                    
                ScrollView{
                    VStack {
                    Text("Welcome back!")
                        .font(.system(size: 20, weight: .medium))
                    CustomTextField(text: $email, placeholder: Text("Email Address"))
                        .keyboardType(.emailAddress)
                        .padding(16)
                        .padding(.top, 20)
                    CustomSecureTextField(text: $password, placeholder: Text("Password"))
                            .padding(16)
                    Toggle(isOn: $isOn) {
                        Text("Remember me")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .light))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .toggleStyle(iOSCheckboxToggleStyle())
                            
                    Button(action: { loginButtonPressed = true }, label: {
                        Text("Sign In")
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
                    .padding(.top, 16)
                    Button("Forgot Password?", action: { showForgotPassword = true })
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(.black)
                        .padding(10)
                        NavigationLink("",destination: ForgotPasswordView(), isActive: $showForgotPassword)
                    Text("Don't have an account?")
                            .font(.system(size: 18, weight: .light))
                            .padding(.top, 50)
                    Button("Create Account", action: { showRegistrationView = true})
                        .font(.system(size: 18,weight: .medium))
                        .foregroundColor(Color.accentColor)
                        .padding(2)
                        .padding(.bottom, 230)
                        NavigationLink("",destination: RegistrationView(), isActive: $showRegistrationView)
                    }
                }.padding(.top, 250)
                    .ignoresSafeArea()
            }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
