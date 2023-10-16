//
//  ExploreScreen.swift
//  ArtistApp
//
//  Created by Noura  on 01/04/1445 AH.
//

import Foundation
//
//  ContentView.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 24/03/1445 AH.
//

import SwiftUI

struct ExploreScreen: View {
    @State private var search_bar = ""
    var body: some View {
        
        NavigationStack {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(0..<5) {_ in
                            HStack{
                                VStack{
                                    NavigationLink(destination: Pano()){
                                        ZStack{
                                            Image("galImage")
                                                .resizable()
                                                .frame(width:160 , height: 225)
                                                .cornerRadius(20)
                                                .frame(maxWidth: 100)
                                            VStack{
                                                Spacer()
                                                Text("Ghnadi Museme")
                                                    .foregroundColor(.white)
                                            }
                                        }
                                    }
                                    ZStack{
                                        Image("Mu2")
                                            .resizable()
                                            .frame(width:160 , height: 225)
                                            .cornerRadius(20)
                                            .frame(maxWidth: 160)
                                        VStack{
                                            Spacer()
                                            Text("Ghnadi Museme")
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                                VStack{
                                    
                                    ZStack{
                                        Image("Mu3")
                                            .resizable()
                                            .frame(width:160 , height: 225)
                                            .cornerRadius(20)
                                        VStack{
                                            Spacer()
                                            Text("Ghnadi Museme")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    
                                    ZStack{
                                        
                                        Image("Mu4")
                                            .resizable()
                                            .frame(width:160 , height: 225)
                                            .cornerRadius(20)
                                            .frame(maxWidth: 190)
                                        VStack{
                                            Spacer()
                                            Text("Ghnadi Museme")
                                                .foregroundColor(.white)
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                    }
           
          }
                
                .navigationBarTitle("Explore")
                .navigationBarItems(trailing:
                                        HStack {
                                                            Button(action: {
                            //Mayasem
                                                            }) {
                                                                Image(systemName: "plus")
                                                            }
                                                            .font(.system(size: 20))
                                                            Button(action: {
                            //Renad Page
                                                            }) { NavigationLink(destination: User_Account()){
                                                                
                                                                
                                                                Image(systemName: "person.circle")
                                                                    .font(.system(size: 20))
                                                            }
                                                            }
                                                        }  )
                .searchable(text: $search_bar)
         
                                    
            
                }//N
        }//view
        
    }//sTATE








    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ExploreScreen()
        }
    }

