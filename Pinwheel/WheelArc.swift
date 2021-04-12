//
//  WheelArc.swift
//  Pinwheel
//
//  Created by Oskar Groth on 2021-04-12.
//

import SwiftUI

struct WheelArc: View {
    
    let color: Color
    let radius: CGFloat
    let degrees: Double
    let size: CGFloat = 1.2
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: radius * size, height: radius * size)
                .padding(.bottom, radius * size)
                .frame(width: radius * 2, height: radius * 2)
                .inverseMask(
                    Circle()
                        .frame(width: radius * size, height: radius * size)
                        .padding(.bottom, radius * size)
                        .frame(width: radius * 2, height: radius * 2)
                        .rotationEffect(.init(degrees: -degrees), anchor: .center)
                )
        }
    }
}

struct WheelArc_Previews: PreviewProvider {
    static var previews: some View {
        WheelArc(color: .yellow, radius: 50, degrees: 50)
            .padding(20)
    }
}
