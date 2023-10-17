//
//  CreateArtGallery.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 01/04/1445 AH.
//

import SwiftUI

struct CreateArtGallery: View {
    @State var galName = ""
        @State var galdesc = ""
        @State private var showData = false
        var body: some View {
            NavigationStack{
                VStack {
                    Form{
                        HStack{
                            TextField("Gallery Name", text: $galName)
                            // .position(x:160 ,y:17)
                                .padding(.leading , 80)
                            Text("Name")
                            //  .position(x:-140 ,y:17)
                                .padding(.leading , -320)
                        }
                        HStack{
                            TextField("Gallery Description", text: $galdesc)
                                .position(x:160 ,y:17)
                            Text("About")
                                .position(x:-140,y:17)
                        }
                        
                        NavigationStack {
                            VStack(content: {
                                Image("add Image")
                                    .resizable()
                                    .frame(width:330,height:300)
                            })
                        }
                        Section{
                            NavigationLink(destination: SignIn()){
                                
                                Button("Create Gallery"){
                                    showData = true
                                    
                                }
                                .bold()
                                .frame(width: 350, height: 60)
                                .background(Color.blue).foregroundColor(.white)
                                .cornerRadius(15)
                            }
                        }
                        
                    }
                    
                    .alert("Allow Access", isPresented: $showData){
                        Button("Allow", role: .destructive){}
                        Button("Cancel", role: .cancel){}
                    } message: {
                        Text("Please be alert, This task will take some or full access to the photo app to help create your gallery.")
                    }
                    .navigationTitle("Create Gallery")
                }
                
            }
        }
                
            }


struct CreateArtGallery_Previews: PreviewProvider {
    static var previews: some View {
        CreateArtGallery()
    }
}
