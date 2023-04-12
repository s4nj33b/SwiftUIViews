//
//  SwiftUIBasics.swift
//  NewAge
//
//  Created by Sanjeeb Pallai on 12/04/23.
//

import SwiftUI

struct SwiftUIBasics: View {
    @State private var colorChange = false
    @State private var sizeChange = false

    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ?  .yellow : .red)
                .scaleEffect(sizeChange ? 1.5 : 1.0)
                .animation(.easeIn(duration: 1.0), value: 1)
                .onTapGesture {
                    self.colorChange.toggle()
                }
                .onLongPressGesture {
                    self.sizeChange.toggle()
                }
        }
    }
}

struct SwiftUIBasics_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBasics()
    }
}
