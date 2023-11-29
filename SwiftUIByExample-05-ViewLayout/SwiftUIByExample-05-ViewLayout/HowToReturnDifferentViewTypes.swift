//
//  HowToReturnDifferentViewTypes.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct HowToReturnDifferentViewTypes: View {
    
    var tossResult: some View {
        Group {
            if Bool.random() {
                Image(systemName: "laser.burst")
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Better luck next time")
                    .font(.title)
            }
        }.frame(width: 400, height: 300)
    }
    
    var body: some View {
        VStack {
            Text("Coin Flip")
            
            tossResult
        }
    }
}

#Preview {
    HowToReturnDifferentViewTypes()
}
