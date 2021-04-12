//
//  ContentView.swift
//  Pinwheel
//
//  Created by Oskar Groth on 2021-04-11.
//

import SwiftUI

struct ContentView: View {
    
    @State var animate = false

    var body: some View {
        WheelView(radius: 50)
            .rotationEffect(animate ? .init(degrees: 360) : .zero)
            .shadow(color: Color.black.opacity(0.5), radius: 4, y: 2)
            .onAppear {
                withAnimation(Animation.linear(duration: 0.75).repeatForever(autoreverses: false)) {
                    animate = true
                }
            }
            .frame(width: 100, height: 100)
            .padding([.leading, .trailing], 140)
            .padding([.top, .bottom], 70)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
