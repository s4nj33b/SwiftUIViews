//
//  SwiftUIText.swift
//  NewAge
//
//  Created by Sanjeeb Pallai on 12/04/23.
//

import SwiftUI
struct SwiftUIText: View {
    @State private var colorChange = false
    @State private var sizeChange = false

    var body: some View {
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don ’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(10)
            .truncationMode(.tail)
            .fontWeight(.heavy)
            .font(.custom("Nunito", size: 25))
            .foregroundColor(.green)
            //.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(60), axis: (x: 2, y: 0, z: 0))
            .shadow(color: .green, radius: 2, x: 0, y: 15)
            .padding()
    }
}

struct SwiftUIText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIText()
    }
}
