//
//  SignIn.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 02/04/1445 AH.
//

import SwiftUI
//import AuthenticationServices

struct SignIn: View {
   @State private var username = ""
    @State  private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var showCreatAccount = false

    
    var body: some View {
        NavigationView{
            
            
            
            VStack(alignment: .center) {
                
                //QuickSignInWithApple()
                    //.frame(width: 280, height: 60, alignment: .center)
                  //  .position(CGPoint(x: 190.0, y: 190.0))
                    //.padding()
                
                
                Text("Sign in to get started")
                
                    .padding(.leading , -130)
                
                   // .position(CGPoint(x: 130.0, y: -490.0))
                    .foregroundColor(Color.black.opacity(0.9))
                    .padding( )
                
                
                ZStack{
                    Image(systemName: ("envelope"))
                    
                        .padding(.leading , -140)
                    
                        
                    TextField("      Enter your Email", text: $username)
                    
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.02))
                        .shadow(radius: 10)
                        .cornerRadius(10.0)
                    // .position(CGPoint(x: 199.0, y: -190.0))
                        .border(.red, width: CGFloat(wrongUsername))
                    
                }
                
                
                ZStack{
                    
                    Image(systemName: ("key"))
                        .padding(.leading , -140)
                    
                    SecureField("      Enter your Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.02))
                        .shadow(radius: 10)
                        .cornerRadius(10.0)
                    //.position(CGPoint(x: 199.0, y: -179.0))
                        .border(.red, width: CGFloat(wrongUsername))
                        .padding()
                }
                
                Button("Forgot Password?") {
                    
                }
                    .padding(.leading , 140)
                    .bold()
                   // .position(CGPoint(x: 279.0, y: -310.0))
                    .foregroundColor(.blue)
                
                
                
                
                Button("Create Account") {
                    showCreatAccount.toggle()
                }
                .foregroundColor(.white)
                .bold()
                .frame(width: 280, height: 60)
                .background(Color.blue)
                .cornerRadius(10)
              

//                QuickSignInWithApple()
//                    .frame(width: 280, height: 60, alignment: .center)
//
//                    .padding()
                
                
                Text("Don't have an account?")
                    .foregroundColor(Color.black.opacity(0.8))
                    //.padding()
                Button("Register Now") {
                    
                }
                    .bold()
                    .foregroundColor(.blue)
                    //.padding()
               
                
                
                
                
                
            }
            .sheet(isPresented: $showCreatAccount, content: {
                CreateAccount()
            })
            .navigationTitle("Sign In")
            
        }
        
        
        
    }
        
        
    }



struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
