//
//  CustomTextField.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 07/03/2023.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        VStack {
            TextField("\(placeholder)", text: $text)
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

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeholder: Text(""))
    }
}
