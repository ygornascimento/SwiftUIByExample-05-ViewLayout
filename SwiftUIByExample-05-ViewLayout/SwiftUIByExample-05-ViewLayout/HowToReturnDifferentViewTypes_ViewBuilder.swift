//
//  HowToReturnDifferentViewTypes_ViewBuilder.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 29/11/23.
//

import SwiftUI

struct HowToReturnDifferentViewTypes_ViewBuilder: View {
    @ViewBuilder var tossResult: some View {
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
     “That works, but honestly if you find yourself reaching for @ViewBuilder you should question whether you’re trying to put too much into one view.”

     Excerpt From
     SwiftUI by Example
     HWS Paul Hudson
     This material may be protected by copyright.
     */
}

#Preview {
    HowToReturnDifferentViewTypes_ViewBuilder()
}
