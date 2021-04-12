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
            .shadow(color: Color.black.opacity(0.5), radius: 4, y: 4)
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    animate = true
                }
            }
            .frame(width: 100, height: 100)
            .padding(.init(top: 60, leading: 140, bottom: 74, trailing: 140))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
