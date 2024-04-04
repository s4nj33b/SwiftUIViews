//
//  SwiftUIStacks.swift
//  SwiftUIViews
//
//  Created by Sanjeeb Pallai on 18/04/23.
//

import SwiftUI
struct SwiftUIStacks2: View {
    var body: some View {
        ZStack {
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "burst.fill")
                .padding()
                .offset(x: 0, y: 180)

            PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 255/255, green: 183/255, blue: 37/255), icon: "dial")
                .padding()
                .scaleEffect(0.95)

            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)
        }
    }
}

struct SwiftUIStacks2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStacks2()
    }
}
