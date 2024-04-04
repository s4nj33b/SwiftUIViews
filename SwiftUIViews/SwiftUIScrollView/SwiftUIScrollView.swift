//
//  SwiftUIScrollView.swift
//  SwiftUIViews
//
//  Created by Sanjeeb Pallai on 04/04/24.
//  Chapter #6

import SwiftUI

struct SwiftUIScrollView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("MONDAY, AUG 20")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    Text("Your Reading")
                        .font(.title)
                        .foregroundStyle(.primary)
                        .fontWeight(.black)
                        .lineLimit(1)

                }
                Spacer()
            }
            .padding([.top, .horizontal])
        }
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {

                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's Newin Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                    .minimumScaleFactor(0.5)

                }
            }
        }
        Spacer()
    }
}
struct SwiftUIScrollViewVertical: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("MONDAY, AUG 20")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                        Text("Your Reading")
                            .font(.title)
                            .foregroundStyle(.primary)
                            .fontWeight(.black)
                            .lineLimit(1)

                    }
                    Spacer()
                }
                .padding([.top, .horizontal])
                VStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's Newin Natural Language API", author: "Sai Kambampati")
                }
            }
        }
    }

}

#Preview {
    SwiftUIScrollView()
}
