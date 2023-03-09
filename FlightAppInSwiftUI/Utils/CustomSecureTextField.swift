//
//  CustomSecureTextField.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 08/03/2023.
//

import SwiftUI

struct CustomSecureTextField: View {
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        VStack {
            SecureField("\(placeholder)", text: $text)
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.black)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.leading, 16)
                .padding(.trailing, 16)
        }
    }
}

struct CustomSecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureTextField(text: .constant(""), placeholder: Text(""))
    }
}
