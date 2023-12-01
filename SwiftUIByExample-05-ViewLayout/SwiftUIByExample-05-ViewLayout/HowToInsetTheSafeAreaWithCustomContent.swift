//
//  HowToInsetTheSafeAreaWithCustomContent.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct HowToInsetTheSafeAreaWithCustomContent: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a Row")
            .safeAreaInset(edge: .bottom) {
                Text("Outside Safe Area")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.indigo)
            }
        }
    }
}

#Preview {
    HowToInsetTheSafeAreaWithCustomContent()
}
