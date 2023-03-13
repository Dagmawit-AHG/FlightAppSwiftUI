//
//  RegistrationView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 07/03/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""
    @State private var isOn = false
    @State private var createAccountPressed = false
    @State private var showLoginView = false
    
    @EnvironmentObject private var viewModel: AuthViewModel
    
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
                    Text("Tell us about yourself")
                        .font(.system(size: 20, weight: .medium))
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"))
                            .padding(16)
                            .padding(.top, 20)
                    CustomTextField(text: $email, placeholder: Text("Email Address"))
                        .keyboardType(.emailAddress)
                        .padding(16)
                        CustomTextField(text: $phoneNumber, placeholder: Text("Phone Number"))
                                .padding(16)
                    CustomSecureTextField(text: $password, placeholder: Text("Password"))
                            .padding(16)
                    Toggle(isOn: $isOn) {
                            Text("I agree to the")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .light))
                            Text("Terms and Services")
                            .foregroundColor(.accentColor)
                            .font(.system(size: 15, weight: .light))
                            Text("and")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .light))
                            Text("Privacy Policy")
                            .foregroundColor(.accentColor)
                            .font(.system(size: 15, weight: .light))
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                        .toggleStyle(iOSCheckboxToggleStyle())
                    Button(action: {
                        viewModel.register(withEmail: email, password: password, fullname: fullname,phoneNumber: phoneNumber)
                    }, label: {
                        Text("Create Account")
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
                    Text("Already have an account?")
                            .font(.system(size: 18, weight: .light))
                            .padding(.top, 50)
                    Button("Sign In", action: { showLoginView = true})
                        .font(.system(size: 18,weight: .medium))
                        .foregroundColor(Color.accentColor)
                        .padding(2)
                        .padding(.bottom, 230)
                    NavigationLink("",destination: LoginView(), isActive: $showLoginView)
                    }
                }.padding(.top, 250)
                    .ignoresSafeArea()
                }
            }
        }

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
