//
//  HowToReturnDifferentViewTypes_BreakInSmallerViews.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 29/11/23.
//

import SwiftUI


struct TossResult: View {
    var body: some View {
        if Bool.random() {
            return AnyView(Image(systemName: "laser.burst").resizable().scaledToFit())
        } else {
            return AnyView(Text("Better luck next time").font(.title))
        }
    }
}
struct HowToReturnDifferentViewTypes_BreakInSmallerViews: View {
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            
            TossResult().frame(width: 400, height: 300)
        }
    }
    
    /*
     “This works particularly well to help break apart logic and layout, and also has the benefit of making your views more reusable elsewhere in your app. SwiftUI will automatically collapse your view hierarchy, so there is no meaningful performance difference when you break up a view.
     ”

     Excerpt From
     SwiftUI by Example
     HWS Paul Hudson
     This material may be protected by copyright.
     */
}

#Preview {
    HowToReturnDifferentViewTypes_BreakInSmallerViews()
}
