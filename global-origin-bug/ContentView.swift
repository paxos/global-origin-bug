//
//  ContentView.swift
//  global-origin-bug
//
//  Created by Patrick Dinger on 11/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            GeometryReader { gr in
                Text("\(gr.frame(in: .global).origin.y)")
                    .padding()
                    .offset(y: 200)
            }
            .frame(width: 500, height: 500)
        }
        .frame(height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
