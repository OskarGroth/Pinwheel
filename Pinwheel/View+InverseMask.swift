//
//  View+InverseMask.swift
//  Pinwheel
//
//  Created by Oskar Groth on 2021-04-12.
//

import SwiftUI

public extension View {
    
    // Creates an inverse mask where foreground becomes transparent and background becomes opaque.
    func inverseMask<Mask>(_ mask: Mask) -> some View where Mask: View {
        self.mask(
            mask
                .foregroundColor(.black)
                .background(Color.white)
                .compositingGroup()
                .luminanceToAlpha()
        )
    }
}
