//
//  WheelView.swift
//  Pinwheel
//
//  Created by Oskar Groth on 2021-04-11.
//

import SwiftUI

struct WheelView: View {

    static let colors = ["green", "yellow", "orange", "red", "purple", "blue"]
    
    let radius: CGFloat
    
    var body: some View {
        ZStack {
            ForEach(Array(Self.colors.enumerated()), id: \.offset) { entry in
                WheelArc(color: Color(entry.element), radius: 50, degrees: 360.0 / Double(Self.colors.count))
                    .rotationEffect(.init(degrees: Double(entry.offset * (360 / Self.colors.count))))
            }
        }
        .drawingGroup(opaque: true, colorMode: .extendedLinear)
        .mask(Circle().frame(width: radius*2, height: radius*2))
    }
}

struct WheelView_Previews: PreviewProvider {
    static var previews: some View {
        WheelView(radius: 50)
            .padding(20)
    }
}
