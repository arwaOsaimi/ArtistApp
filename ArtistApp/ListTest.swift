//
//  ListTest.swift
//  ArtistApp
//
//  Created by Arwa Alosaimi on 01/04/1445 AH.
//

import SwiftUI

struct ListTest: View {
    var body: some View {
        List{
            ForEach(0..<10){i in
                Text("hi")
            }.onDelete { _ in
                print("")
            }
        
        }
    }
}

struct ListTest_Previews: PreviewProvider {
    static var previews: some View {
        ListTest()
    }
}
