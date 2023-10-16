//
//  Pano.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 01/04/1445 AH.
//

import SwiftUI

struct Pano: View {
    var body: some View {
        GeometryReader { proxy in
            Image("galImage")
                .resizable()
                .frame(width: proxy.size.width, height: proxy.size.height)
                .scaledToFit()
                .clipShape(Rectangle())
                .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
            ZStack {
                VStack(spacing: 30){
                    Text("Gandhi Museum").font(.title).foregroundColor(.white)
                    Text("a museum located in New Delhi, India showcasing the life and principles of Mahatma Gandhi").font(.title3)
                .foregroundColor(.white)}
                .padding()
                .multilineTextAlignment(.center)
                .background(
                .ultraThinMaterial,
                    in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                .position(x:200,y:700)}}
                .ignoresSafeArea()}
}

struct Pano_Previews: PreviewProvider {
    static var previews: some View {
        Pano()
    }
}
