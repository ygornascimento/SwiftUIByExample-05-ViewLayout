//
//  HowToCreateACustomLayoutUsingTheLayoutProtocol.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 01/12/23.
//

import SwiftUI

struct RadialLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize,
                      subviews: Subviews,
                      cache: inout Void) -> CGSize {
        //accept the full proposed space, replacing any nil values with a sensible default
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, 
                       proposal: ProposedViewSize,
                       subviews: Subviews,
                       cache: inout ()) {
        //calculate de radius of our bounds
        let radius = min(bounds.size.width, bounds.size.height) / 2
        
        //figure out the angle between each subview on out circle
        let angle = Angle.degrees(360 / Double(subviews.count)).radians
        
        for (index, subview) in subviews.enumerated() {
            //ask this view for its ideal size
            let viewSize = subview.sizeThatFits(.unspecified)
            
            //calculate the X and Y position so this view lies inside our circle's edge
            let xPos = cos(angle * Double(index) - .pi / 2) * (radius - viewSize.width / 2)
            let yPos = sin(angle * Double(index) - .pi / 2) * (radius - viewSize.height)
            
            //position this view relative to our centre, using its natual size ("unspecified")
            let point = CGPoint(x: bounds.midX + xPos, y: bounds.midY + yPos)
            
            subview.place(at: point, anchor: .center, proposal: .unspecified)
            
        }
        
    }
}

struct HowToCreateACustomLayoutUsingTheLayoutProtocol: View {
    @State private var count = 16
    
    var body: some View {
        RadialLayout {
            ForEach(0..<count, id: \.self) { _ in
                Circle().frame(width: 32, height: 32)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Stepper("Count: \(count)", value: $count.animation(), in: 0...36)
                .padding()
        }
    }
}

#Preview {
    HowToCreateACustomLayoutUsingTheLayoutProtocol()
}
