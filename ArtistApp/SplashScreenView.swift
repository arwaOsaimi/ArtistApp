//
//  SplashScreenView.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 27/03/1445 AH.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
                 if self.isActive {
                    // ContentView()
                     
                     CreateAccount()
                 } else {
                     //Rectangle()
                         
                     Image("logo")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 300, height: 300)
                         .background(Color.white)
                 }
             }
             .onAppear {
                 DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                     withAnimation {
                         self.isActive = true
                     }
                 }
             }

        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
