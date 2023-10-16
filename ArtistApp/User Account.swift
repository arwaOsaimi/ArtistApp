//
//  User Account.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 01/04/1445 AH.
//

import SwiftUI

struct User_Account: View {
    @State private var name = ""
    @State private var email = ""
    @State private var galName = ""
    @State private var galName2 = ""
    @State private var togPrivate = true
    @State private var togPrivate2 = true
    @State private var togPublish = false
    @State private var togPublish2 = false
    @State private var galImage = Image("galImage")
    @State private var galImage2 = Image("galImage2")
    var body: some View {
        NavigationView{
            Form{
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame (width: 50, height: 50)
                        .cornerRadius(8)
                        .position(x: 15,y:35)
                        .tint(.black)
                        .ignoresSafeArea()
                    VStack{
                        Text("Sara")
                            .font(.title2).foregroundColor(.black)
                            .position(x: -13,y:20)
                        Text("Sara@gmail.com")
                            .position(x: -10,y:10).font(.callout)
                        .foregroundColor(.gray)}}
                List{
                    Section(header: Text("MANAGE GALLERY")) {
                        HStack{
                            galImage
                                .resizable()
                                .frame (width: 50, height: 50)
                                .cornerRadius(8)
                                .position(x: 15,y:35)
                            TextField("Galllery's Name", text: $galName)
                                .position(x: -10,y:30).font(.callout)
                                .foregroundColor(.gray)
                            Image(systemName:"chevron.right")
                            
                                .swipeActions {
                                    Button {
                                        print("Delete")
                                    } label: {
                                        Label("Delete", systemImage:
                                                "trash.fill").tint(.red)
                                    }
                                }.swipeActions {
                                    Button {
                                        print( "Edit")
                                    } label: {
                                        Label("Edit", systemImage:
                                                "gearshape").tint(.orange)
                                    }
                                }
                                .swipeActions {
                                    Button {
                                        print( "Share")
                                    } label: {
                                        Label("Share", systemImage:
                                                "square.and.arrow.up").tint(.blue)
                                    }
                                }
                        }
                        Toggle("Private", isOn: $togPrivate)
                            .onChange(of: togPrivate) { newValue in
                                if newValue {
                                    togPublish = false
                                }
                            }
                        Toggle("Publish", isOn: $togPublish)
                            .onChange(of: togPublish) { newValue in
                                if newValue {
                                    togPrivate = false
                                }
                            }}}
                List{
                
                    Section(header: Text("MANAGE GALLERY")) {
                        HStack{
                            galImage2
                                .resizable()
                                .frame (width: 50, height: 50)
                                .cornerRadius(8)
                                .position(x: 15,y:35)
                            TextField("Galllery's Name", text: $galName2)
                                .position(x: -10,y:30).font(.callout)
                                .foregroundColor(.gray)
                            Image(systemName:"chevron.right")
                                .swipeActions {
                                    Button {
                                        print( "Delete")
                                    } label: {
                                        Label("Delete", systemImage:
                                                "trash.fill").tint(.red)
                                    }
                                }.swipeActions {
                                    Button {
                                        print( "Edit")
                                    } label: {
                                        Label("Edit", systemImage:
                                                "gearshape").tint(.orange)
                                    }
                                }
                                .swipeActions {
                                    Button {
                                        print( "Share")
                                    } label: {
                                        Label("Share", systemImage:
                                                "square.and.arrow.up").tint(.blue)
                                    }
                                }
                        }
                        Toggle("Private", isOn: $togPrivate2)
                            .onChange(of: togPrivate2) { newValue in
                                if newValue {
                                    togPublish2 = false
                                }
                            }
                        Toggle("Publish", isOn: $togPublish2)
                            .onChange(of: togPublish2) { newValue in
                                if newValue {
                                    togPrivate2 = false
                                }
                            }}
                }}
            .navigationTitle("Account")}


    }
}

struct User_Account_Previews: PreviewProvider {
    static var previews: some View {
        User_Account()
    }
}
