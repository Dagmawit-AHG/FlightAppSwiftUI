//
//  VerificationCodeView.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 09/03/2023.
//

import SwiftUI

struct VerificationCodeView: View {
    @State private var firstDigit = ""
    @State private var secondDigit = ""
    @State private var thirdDigit = ""
    @State private var fourthDigit = ""
    @State private var fifthDigit = ""
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
                    Text("Enter the code we sent you and we will process your account.")
                        .font(.system(size: 18, weight: .light))
                        .padding(16)
                    HStack(spacing: 10) {
                        TextField("",text: $firstDigit)
                            .frame(width: 59, height: 59)
                            .border(Color.accentColor)
                            .cornerRadius(5)
                        TextField("",text: $secondDigit)
                            .frame(width: 59, height: 59)
                            .border(Color.accentColor)
                            .cornerRadius(5)
                        TextField("",text: $thirdDigit)
                            .frame(width: 59, height: 59)
                            .border(Color.accentColor)
                            .cornerRadius(5)
                        TextField("",text: $fourthDigit)
                            .frame(width: 59, height: 59)
                            .border(Color.accentColor)
                            .cornerRadius(5)
                        TextField("",text: $fifthDigit)
                            .frame(width: 59, height: 59)
                            .border(Color.accentColor)
                            .cornerRadius(5)
                    }
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
                }
            }.padding(.top, 250)
                .ignoresSafeArea()
        }
    }
}

struct VerificationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationCodeView()
    }
}
