//
//  AuthViewModel.swift
//  FlightAppInSwiftUI
//
//  Created by Dagmawit Alemayehu on 10/03/2023.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                print("Login failed: \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self?.userSession = user
            print("Login successful")
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, phoneNumber: String) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            print("User registration successful")
            
            let data = ["email": email,
                        "fullname": fullname,
                        "password": password,
                        "phoneNumber": phoneNumber,
                        "uid": user.uid
            ]
            Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                print("User data uploaded")
                self?.userSession = user
            }
        }
    }
    
    func resetPassword() {
        
    }
    
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
}
