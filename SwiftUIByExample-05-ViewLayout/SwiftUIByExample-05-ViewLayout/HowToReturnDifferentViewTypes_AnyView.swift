//
//  HowToReturnDifferentViewTypes_AnyType.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 29/11/23.
//

import SwiftUI

struct HowToReturnDifferentViewTypes_AnyView: View {
    var tossResult: some View {
        if Bool.random() {
            return AnyView(Image(systemName: "laser.burst").resizable().scaledToFit())
        } else {
            return AnyView(Text("Better luck next time").font(.title))
        }
    }
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            
            tossResult.frame(width: 400, height: 300)
        }
    }
    
    /*
     “If you haven’t heard of this concept, it effectively forces Swift to forget about what specific type is inside the AnyView, allowing them to look like they are the same thing. This has a performance cost, though, so don’t use it often.
     Although both Group and AnyView achieve the same result for our layout, between the two it’s generally preferable to use Group because it’s more efficient for SwiftUI.”

     Excerpt From
     SwiftUI by Example
     HWS Paul Hudson
     This material may be protected by copyright.
     */
}

#Preview {
    HowToReturnDifferentViewTypes_AnyView()
}
