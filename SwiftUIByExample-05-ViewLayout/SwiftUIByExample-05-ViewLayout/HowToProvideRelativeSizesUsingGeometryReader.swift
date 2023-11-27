//
//  HowToProvideRelativeSizesUsingGeometryReader.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct HowToProvideRelativeSizesUsingGeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.50)
                    .background(.yellow)
                
                Text("Right")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.50)
                    .background(.orange)
            }
        }.frame(height: 50)
    }
}

#Preview {
    HowToProvideRelativeSizesUsingGeometryReader()
}
