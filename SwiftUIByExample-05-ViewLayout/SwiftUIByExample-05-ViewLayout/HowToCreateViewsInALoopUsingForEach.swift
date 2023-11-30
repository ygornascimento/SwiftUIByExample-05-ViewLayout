//
//  HowToCreateViewsInALoopUsingForEach.swift
//  SwiftUIByExample-05-ViewLayout
//
//  Created by Ygor Nascimento on 30/11/23.
//

import SwiftUI

//Example 3
struct SimpleGameResult {
    let id = UUID()
    let score: Int
}

//Example 4
struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}

struct HowToCreateViewsInALoopUsingForEach: View {
    
    //Example 2
    let colors: [Color] = [.red, .green, .blue]
    
    //Example 3
    let results = [
        SimpleGameResult(score: 8),
        SimpleGameResult(score: 5),
        SimpleGameResult(score: 10)
    ]
    
    //Example 4
    let idResults = [
        IdentifiableGameResult(score: 5),
        IdentifiableGameResult(score: 8),
        IdentifiableGameResult(score: 11)
    ]
    
    var body: some View {
        //Example 1
        VStack(alignment: .leading) {
            ForEach((1...10).reversed(), id: \.self) {
                Text("\($0)...")
            }
            
            Text("Ready or not, here I come!")
        }
        //Example 2
        VStack {
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }
        }
        
        //Example 3
        VStack {
            ForEach(results, id: \.id) { result in
                Text("Result: \(result.score)")
            }
        }
        
        //Example 4
        VStack {
            ForEach(idResults) { result in
                Text("Id Result: \(result.score)")
            }
        }
    }
}

#Preview {
    HowToCreateViewsInALoopUsingForEach()
}
