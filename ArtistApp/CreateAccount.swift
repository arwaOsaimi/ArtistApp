//
//  ContentView.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 24/03/1445 AH.
//

import SwiftUI
struct CreateAccount: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var Cpassword: String = ""

    var body: some View {
        VStack(alignment: .center) {
            Text("Create Account")
                .bold()
                .font(.largeTitle)
            
            Text("Sign up to get started!")

            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Confirm Password", text: $Cpassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
               
                print("Username: \(username)")
                print("Email: \(email)")
                print("Password: \(password)")
            }) {
                Text("Create Account")
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
        }
        
        .padding()
    }


struct CreateAccount_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccount()
        }
        
    }// preview
    
}//for all
