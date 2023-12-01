//
//  HowToMakeTwoViewsTheSameWidthOrHeight.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 30/11/23.
//

import SwiftUI

struct HowToMakeTwoViewsTheSameWidthOrHeight: View {
    var body: some View {
        HStack {
            Text("This is a short string.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.red)
            
            Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's just so long.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.green)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxHeight: 200)
        
        VStack {
            Button("Log in") {}
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .clipShape(Capsule())
            
            Button("Reset Password") {}
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .clipShape(Capsule())
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}

#Preview {
    HowToMakeTwoViewsTheSameWidthOrHeight()
}
